# Ontario-SEAData2020 (unificado)

Arquitectura objetivo de este repositorio:

`SPARQL -> Ontop -> PostgreSQL intermedio -> Spice SQL federado -> 10 BDs MySQL Ontario`

Con este flujo tienes un endpoint SPARQL unico (`Ontop`) sobre una federacion SQL unica (`Spice`) de las 10 fuentes.

## Requisitos

- Docker + Docker Compose (`docker compose`)
- Datos TSV disponibles en `datasources/tsv/` para las 10 fuentes
  - Si los tienes en partes (`.zip.001`, `.zip.002`, ...), extráelos antes

## Estructura relevante

- `datasources/mysql/`: stack de las 10 BDs MySQL fuente
- `spice/`: stack de Spice + capa intermedia + Ontop unificado
- `queries/`: consultas SPARQL listas para validar federacion

## 1) Arranque completo (todo en uno)

Desde la raiz de `Ontario-SEAData2020`:

```bash
cd spice
bash intermediate/scripts/start_unified_endpoint.sh
```

Este script hace automaticamente:

1. Levanta las 10 BDs MySQL de `datasources/mysql`.
2. Activa `spice/spicepod.ontario10.intermediate.yaml`.
3. Levanta Spice y valida `http://localhost:8090/v1/sql`.
4. Levanta PostgreSQL intermedio (`localhost:55433`).
5. Sincroniza datos desde Spice a PostgreSQL.
6. Levanta Ontop unificado.

## 2) Endpoints

- Spice SQL: `http://localhost:8090/v1/sql`
- Ontop UI: `http://localhost:18085/`
- Ontop SPARQL: `http://localhost:18085/sparql`

## 3) Probar consultas SPARQL

Desde `Ontario-SEAData2020/spice`:

```bash
bash intermediate/scripts/run_unified_sparql.sh ../queries/check_unified_10_sources.sparql
bash intermediate/scripts/run_unified_sparql.sh ../queries/federated_drugbank_kegg.sparql
bash intermediate/scripts/run_unified_sparql.sh ../queries/federated_drugbank_dailymed.sparql
bash intermediate/scripts/run_unified_sparql.sh ../queries/listing2_unified.sparql
bash intermediate/scripts/run_unified_sparql.sh ../queries/listing3_unified.sparql
```

## 4) Refrescar datos

Si cambian tablas o datos fuente:

```bash
cd spice
bash intermediate/scripts/refresh_intermediate_data.sh
```

## 5) Parar servicios

```bash
cd spice
bash intermediate/scripts/stop_unified_endpoint.sh
```

## 6) Problemas comunes

### El endpoint SPARQL no responde

Revisa:

```bash
cd spice
docker compose logs -f spice
docker compose -f intermediate/docker-compose.yml logs -f ontop_unified
```

### Ya tenias un stack Spice antiguo levantado

Si estabas usando `spice-benchmark` por separado, puede haber conflicto de puertos (`8090`, `50051`, `18085`) o contenedores previos.

Para evitarlo, para primero el stack antiguo y vuelve a lanzar el unificado:

```bash
cd ../spice-benchmark
docker compose stop spice || true
cd intermediate
docker compose down || true
```

### Spice responde pero SPARQL devuelve vacio

Reejecuta sincronizacion:

```bash
cd spice
bash intermediate/scripts/refresh_intermediate_data.sh
```

### No levantan las BDs MySQL de Ontario

Revisa estado:

```bash
cd datasources/mysql
docker compose ps
docker compose logs -f mysql_drugbank_idx
```
