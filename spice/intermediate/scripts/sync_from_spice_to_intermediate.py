#!/usr/bin/env python3
import argparse
import csv
import json
import pathlib
import subprocess
import sys
import urllib.error
import urllib.request


def post_sql(spice_url: str, sql: str, timeout: int) -> list[dict]:
    req = urllib.request.Request(
        spice_url,
        data=sql.encode("utf-8"),
        method="POST",
        headers={"Content-Type": "text/plain"},
    )
    try:
        with urllib.request.urlopen(req, timeout=timeout) as resp:
            payload = resp.read().decode("utf-8")
    except urllib.error.HTTPError as exc:
        body = exc.read().decode("utf-8", errors="replace")
        raise RuntimeError(f"HTTP {exc.code} en Spice. SQL={sql}\n{body}") from exc
    except urllib.error.URLError as exc:
        raise RuntimeError(f"No se pudo conectar a Spice URL={spice_url}: {exc}") from exc

    try:
        rows = json.loads(payload)
    except json.JSONDecodeError as exc:
        raise RuntimeError(f"Respuesta no JSON de Spice. SQL={sql}\n{payload[:500]}") from exc

    if not isinstance(rows, list):
        raise RuntimeError(f"Respuesta inesperada de Spice: {type(rows)}")

    normalized: list[dict] = []
    for row in rows:
        if isinstance(row, dict):
            normalized.append(row)
        else:
            raise RuntimeError(f"Fila no es objeto JSON: {row!r}")
    return normalized


def quote_ident(identifier: str) -> str:
    return '"' + identifier.replace('"', '""') + '"'


def run_psql(
    compose_file: str,
    pg_service: str,
    pg_db: str,
    pg_user: str,
    sql: str,
) -> None:
    cmd = [
        "docker",
        "compose",
        "-f",
        compose_file,
        "exec",
        "-T",
        pg_service,
        "psql",
        "-U",
        pg_user,
        "-d",
        pg_db,
        "-v",
        "ON_ERROR_STOP=1",
        "-c",
        sql,
    ]
    subprocess.run(cmd, check=True)


def paged_sql(base_sql: str, page_size: int, offset: int) -> str:
    clean = base_sql.strip().rstrip(";")
    return f"SELECT * FROM ({clean}) AS src LIMIT {page_size} OFFSET {offset}"


def to_cell(value) -> str:
    if value is None:
        return ""
    return str(value)


def export_table(
    spice_url: str,
    timeout: int,
    page_size: int,
    spec: dict,
    out_path: pathlib.Path,
) -> tuple[int, list[str]]:
    source_sql = spec["source_sql"]
    columns = list(spec.get("columns", []))

    total_rows = 0
    offset = 0
    writer = None

    out_path.parent.mkdir(parents=True, exist_ok=True)
    with out_path.open("w", newline="", encoding="utf-8") as f:
        while True:
            sql = source_sql if page_size <= 0 else paged_sql(source_sql, page_size, offset)
            rows = post_sql(spice_url, sql, timeout)

            if not columns and rows:
                columns = list(rows[0].keys())

            if not columns:
                raise RuntimeError(
                    f"No hay columnas para {spec['name']}. Define 'columns' en sync_config.json"
                )

            if writer is None:
                writer = csv.DictWriter(f, fieldnames=columns, delimiter="\t")
                writer.writeheader()

            for row in rows:
                writer.writerow({col: to_cell(row.get(col)) for col in columns})

            total_rows += len(rows)

            if page_size <= 0 or len(rows) < page_size:
                break
            offset += page_size

    return total_rows, columns


def load_table(
    compose_file: str,
    pg_service: str,
    pg_db: str,
    pg_user: str,
    container_sync_dir: str,
    tsv_filename: str,
    schema: str,
    table: str,
    columns: list[str],
) -> None:
    q_schema = quote_ident(schema)
    q_table = quote_ident(table)
    q_cols = [quote_ident(c) for c in columns]

    ddl = (
        f"CREATE SCHEMA IF NOT EXISTS {q_schema};"
        f"DROP TABLE IF EXISTS {q_schema}.{q_table};"
        f"CREATE TABLE {q_schema}.{q_table} ({', '.join(c + ' TEXT' for c in q_cols)});"
    )
    run_psql(compose_file, pg_service, pg_db, pg_user, ddl)

    container_file = f"{container_sync_dir.rstrip('/')}/{tsv_filename}"
    copy_sql = (
        f"\\copy {q_schema}.{q_table} ({', '.join(q_cols)}) "
        f"FROM '{container_file}' WITH (FORMAT csv, DELIMITER E'\\t', HEADER true, ENCODING 'UTF8')"
    )
    run_psql(compose_file, pg_service, pg_db, pg_user, copy_sql)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Extrae tablas desde Spice SQL y las carga en PostgreSQL intermedia para Ontop"
    )
    parser.add_argument("--config", required=True, help="Ruta a sync_config.json")
    parser.add_argument("--spice-url", default="http://localhost:8090/v1/sql")
    parser.add_argument("--timeout", type=int, default=180)
    parser.add_argument(
        "--page-size",
        type=int,
        default=20000,
        help="Filas por bloque para cada query. Usa 0 para desactivar paginacion",
    )
    parser.add_argument("--compose-file", required=True, help="docker-compose del entorno intermedio")
    parser.add_argument("--pg-service", default="postgres_intermediate")
    parser.add_argument("--pg-db", default="intermediate")
    parser.add_argument("--pg-user", default="postgres")
    parser.add_argument("--data-dir", required=True, help="Directorio local montado en /sync")
    parser.add_argument("--container-sync-dir", default="/sync")
    return parser.parse_args()


def main() -> int:
    args = parse_args()

    config_path = pathlib.Path(args.config)
    data_dir = pathlib.Path(args.data_dir)
    if not config_path.is_file():
        print(f"ERROR: config no encontrado: {config_path}", file=sys.stderr)
        return 1

    with config_path.open("r", encoding="utf-8") as f:
        config = json.load(f)

    specs = config.get("tables", [])
    if not isinstance(specs, list) or not specs:
        print("ERROR: sync_config.json no tiene 'tables' valido", file=sys.stderr)
        return 1

    total_loaded = 0
    for idx, spec in enumerate(specs, start=1):
        required = ["name", "source_sql", "target_schema", "target_table"]
        missing = [k for k in required if k not in spec]
        if missing:
            print(f"ERROR: spec incompleto en posicion {idx}: faltan {missing}", file=sys.stderr)
            return 1

        name = spec["name"]
        schema = spec["target_schema"]
        table = spec["target_table"]
        tsv_name = f"{name}.tsv"
        tsv_path = data_dir / tsv_name

        print(f"[{idx}/{len(specs)}] Exportando {name} desde Spice...")
        rows, columns = export_table(
            spice_url=args.spice_url,
            timeout=args.timeout,
            page_size=args.page_size,
            spec=spec,
            out_path=tsv_path,
        )

        print(f"[{idx}/{len(specs)}] Cargando {rows} filas en {schema}.{table}...")
        load_table(
            compose_file=args.compose_file,
            pg_service=args.pg_service,
            pg_db=args.pg_db,
            pg_user=args.pg_user,
            container_sync_dir=args.container_sync_dir,
            tsv_filename=tsv_name,
            schema=schema,
            table=table,
            columns=columns,
        )
        total_loaded += rows

    print(f"Listo: {len(specs)} tablas sincronizadas, filas totales={total_loaded}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
