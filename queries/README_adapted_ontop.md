# Consultas SPARQL para endpoint unificado

Estas consultas se ejecutan contra:

- `http://localhost:18085/sparql`

Arquitectura objetivo:

`SPARQL -> Ontop -> PostgreSQL intermedio -> Spice -> 10 BDs Ontario`

## Consultas incluidas

- `check_unified_10_sources.sparql`
  - Comprueba que existen datos de las 10 fuentes.
- `federated_drugbank_kegg.sparql`
  - Federacion DrugBank + KEGG.
- `federated_drugbank_dailymed.sparql`
  - Federacion DrugBank + DailyMed.
- `listing2_unified.sparql`
  - Adaptacion de `listing2.sparql` para endpoint unico.
- `listing3_unified.sparql`
  - Adaptacion de `listing3.sparql` para endpoint unico (sin `SERVICE`).

## Ejecucion rapida

Desde `Ontario-SEAData2020/spice`:

```bash
bash intermediate/scripts/run_unified_sparql.sh ../queries/check_unified_10_sources.sparql
bash intermediate/scripts/run_unified_sparql.sh ../queries/federated_drugbank_kegg.sparql
bash intermediate/scripts/run_unified_sparql.sh ../queries/listing3_unified.sparql
```
