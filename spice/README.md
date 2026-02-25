# Spice + Ontop (capa intermedia)

Arquitectura:

`SPARQL -> Ontop -> PostgreSQL intermedio -> Spice SQL federado -> 10 BDs Ontario`

## Arranque

Desde `Ontario-SEAData2020`:

```bash
cd spice
bash intermediate/scripts/start_unified_endpoint.sh
```

## Endpoints

- Spice SQL: `http://localhost:8090/v1/sql`
- Ontop UI: `http://localhost:18085/`
- Ontop SPARQL: `http://localhost:18085/sparql`

## Prueba rapida

Desde `Ontario-SEAData2020`:

```bash
cd spice
bash intermediate/scripts/run_unified_sparql.sh ../queries/check_unified_10_sources.sparql
```

## Refrescar

```bash
cd spice
bash intermediate/scripts/refresh_intermediate_data.sh
```

## Parar

```bash
cd spice
bash intermediate/scripts/stop_unified_endpoint.sh
```

Si ya tenias otro stack Spice levantado en otra carpeta, paralo antes para evitar conflictos de puertos.
