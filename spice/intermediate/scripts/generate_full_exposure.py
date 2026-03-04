#!/usr/bin/env python3
import json
import re
import subprocess
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]  # .../Ontario-SEAData2020/spice
REPO_ROOT = ROOT.parents[0]  # .../Ontario-SEAData2020
MYSQL_DIR = REPO_ROOT / "datasources" / "mysql"
SYNC_CONFIG_PATH = ROOT / "intermediate" / "config" / "sync_config.json"
SPICEPOD_PATH = ROOT / "spicepod.ontario10.intermediate.yaml"
MAPPING_PATH = ROOT / "intermediate" / "mappings" / "mapping.ttl"

AUTO_BEGIN = "# BEGIN AUTO FULL MAPS"
AUTO_END = "# END AUTO FULL MAPS"


DBS = [
    ("affymetrix", "mysql_affymetrix_idx", 9000),
    ("chebi", "mysql_chebi_idx", 9001),
    ("dailymed", "mysql_dailymed_idx", 9002),
    ("diseasome", "mysql_diseasome_idx", 9003),
    ("drugbank", "mysql_drugbank_idx", 9004),
    ("kegg", "mysql_kegg_idx", 9005),
    ("linkedct", "mysql_linkedct_idx", 9006),
    ("medicare", "mysql_medicare_idx", 9007),
    ("sider", "mysql_sider_idx", 9008),
    ("tcga", "mysql_tcga_idx", 9009),
]


def run_mysql(service: str, sql: str) -> list[str]:
    cmd = [
        "docker",
        "compose",
        "exec",
        "-T",
        service,
        "mysql",
        "-uontop",
        "-pontop123",
        "-N",
        "-B",
        "-e",
        sql,
    ]
    proc = subprocess.run(
        cmd,
        cwd=MYSQL_DIR,
        check=True,
        text=True,
        capture_output=True,
    )
    return [line.strip() for line in proc.stdout.splitlines() if line.strip()]


def sanitize(value: str) -> str:
    s = re.sub(r"[^A-Za-z0-9]+", "_", value).strip("_").lower()
    if not s:
        s = "col"
    if s[0].isdigit():
        s = f"c_{s}"
    return s


def truncate_ident(value: str, max_len: int = 63) -> str:
    if len(value) <= max_len:
        return value
    return value[:max_len]


def unique_aliases(columns: list[str]) -> list[str]:
    out: list[str] = []
    seen: dict[str, int] = {}
    for c in columns:
        base = sanitize(c)
        idx = seen.get(base, 0)
        seen[base] = idx + 1
        out.append(base if idx == 0 else f"{base}_{idx+1}")
    return out


def quote_df_ident(identifier: str) -> str:
    return '"' + identifier.replace('"', '""') + '"'


def discover() -> list[dict]:
    specs: list[dict] = []
    used_targets: dict[tuple[str, str], int] = {}
    for db, service, _ in DBS:
        tables = run_mysql(service, f"SHOW TABLES FROM {db};")
        for table in tables:
            desc = run_mysql(service, f"DESCRIBE {db}.{table};")
            cols = [row.split("\t", 1)[0] for row in desc]
            if not cols:
                continue
            aliases = unique_aliases(cols)
            select_cols = ", ".join(
                f"{quote_df_ident(col)} AS {alias}" for col, alias in zip(cols, aliases)
            )
            dataset_name = f"mysql_{db}_{table}".lower()
            base_target = truncate_ident(f"{sanitize(table)}__full")
            key = (f"src_{db}", base_target)
            idx = used_targets.get(key, 0)
            used_targets[key] = idx + 1
            if idx == 0:
                target_table = base_target
            else:
                suffix = f"_{idx+1}"
                target_table = truncate_ident(base_target[: 63 - len(suffix)] + suffix)

            specs.append(
                {
                    "db": db,
                    "port": next(p for n, _, p in DBS if n == db),
                    "table": table,
                    "dataset_name": dataset_name,
                    "source_sql": f"SELECT {select_cols} FROM {dataset_name}",
                    "columns": aliases,
                    "target_schema": f"src_{db}",
                    "target_table": target_table,
                }
            )
    return specs


def write_spicepod(specs: list[dict]) -> None:
    lines: list[str] = [
        "version: v1",
        "kind: Spicepod",
        "name: ontario-benchmark-10db-intermediate",
        "",
        "datasets:",
    ]

    by_db: dict[str, list[dict]] = {}
    for s in specs:
        by_db.setdefault(s["db"], []).append(s)

    for db, _, port in DBS:
        db_specs = sorted(by_db.get(db, []), key=lambda x: x["table"].lower())
        lines.append(f"  # {db}")
        for s in db_specs:
            lines.extend(
                [
                    f"  - from: mysql:{db}.{s['table']}",
                    f"    name: {s['dataset_name']}",
                    "    params:",
                    "      mysql_host: host.docker.internal",
                    f"      mysql_tcp_port: {port}",
                    f"      mysql_db: {db}",
                    "      mysql_user: ontop",
                    "      mysql_pass: ontop123",
                    "      mysql_sslmode: disabled",
                    "",
                ]
            )
    SPICEPOD_PATH.write_text("\n".join(lines).rstrip() + "\n", encoding="utf-8")


def write_sync_config(specs: list[dict]) -> None:
    current = json.loads(SYNC_CONFIG_PATH.read_text(encoding="utf-8"))
    current_tables = [t for t in current.get("tables", []) if not t.get("name", "").endswith("_full")]
    additions: list[dict] = []
    for s in specs:
        name = f"{s['dataset_name']}_full"
        additions.append(
            {
                "name": name,
                "source_sql": s["source_sql"],
                "target_schema": s["target_schema"],
                "target_table": s["target_table"],
                "columns": s["columns"],
            }
        )

    additions.sort(key=lambda x: x["name"])
    current_tables.extend(additions)
    current["tables"] = current_tables
    SYNC_CONFIG_PATH.write_text(json.dumps(current, indent=2) + "\n", encoding="utf-8")


def build_auto_mapping(specs: list[dict]) -> str:
    lines = [AUTO_BEGIN]
    for s in sorted(specs, key=lambda x: (x["db"], x["table"].lower())):
        map_id = f"AutoFull_{sanitize(s['db'])}_{sanitize(s['table'])}"
        subj_col = s["columns"][0]
        lines.extend(
            [
                "",
                f"<#{map_id}>",
                "  a rr:TriplesMap ;",
                f'  rr:logicalTable [ rr:tableName "{s["target_schema"]}.{s["target_table"]}" ] ;',
                "  rr:subjectMap [",
                f'    rr:template "http://example.org/full/{s["db"]}/{sanitize(s["table"])}/{{{subj_col}}}" ;',
                f"    rr:class ontu:{sanitize(s['db'])}_{sanitize(s['table'])}_full",
                "  ] ;",
            ]
        )

        for idx, col in enumerate(s["columns"]):
            end = " ." if idx == len(s["columns"]) - 1 else " ;"
            lines.append(
                f"  rr:predicateObjectMap [ rr:predicate ontu:{sanitize(s['db'])}_{sanitize(s['table'])}_{col} ; rr:objectMap [ rr:column \"{col}\" ; rr:datatype <http://www.w3.org/2001/XMLSchema#string> ] ]{end}"
            )
    lines.append("")
    lines.append(AUTO_END)
    lines.append("")
    return "\n".join(lines)


def write_mapping(specs: list[dict]) -> None:
    content = MAPPING_PATH.read_text(encoding="utf-8")
    auto_block = build_auto_mapping(specs)
    if AUTO_BEGIN in content and AUTO_END in content:
        pre = content.split(AUTO_BEGIN, 1)[0].rstrip()
        post = content.split(AUTO_END, 1)[1]
        new_content = pre + "\n\n" + auto_block + post
    else:
        new_content = content.rstrip() + "\n\n" + auto_block
    MAPPING_PATH.write_text(new_content, encoding="utf-8")


def main() -> None:
    specs = discover()
    write_spicepod(specs)
    write_sync_config(specs)
    write_mapping(specs)
    print(f"OK: generados datasets completos para {len(specs)} tablas.")
    print(f"- {SPICEPOD_PATH}")
    print(f"- {SYNC_CONFIG_PATH}")
    print(f"- {MAPPING_PATH}")


if __name__ == "__main__":
    main()
