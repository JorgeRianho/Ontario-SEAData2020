# Entorno intermedio (Ontop sobre Spice)

Esta carpeta contiene la capa intermedia para exponer un endpoint SPARQL unico y estable.

Arquitectura:

`SPARQL client -> Ontop -> PostgreSQL intermedio -> Spice -> 10 BDs Ontario`

## Componentes

- `docker-compose.yml`: PostgreSQL intermedio + Ontop unificado.
- `config/sync_config.json`: tablas/columnas a sincronizar desde Spice.
- `scripts/sync_from_spice_to_intermediate.py`: ETL Spice -> PostgreSQL.
- `scripts/start_unified_endpoint.sh`: arranque end-to-end.
- `scripts/refresh_intermediate_data.sh`: resync datos.
- `scripts/run_unified_sparql.sh`: ejecutar SPARQL por terminal.
- `scripts/stop_unified_endpoint.sh`: parar servicios.
- `mappings/*`: ontologia + mappings R2RML para Ontop.

## Endpoint

- UI: `http://localhost:18085/`
- SPARQL: `http://localhost:18085/sparql`
