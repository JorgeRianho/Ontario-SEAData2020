#!/usr/bin/env bash
set -euo pipefail

SPICE_HTTP_HOST="${SPICE_HTTP_HOST:-localhost}"
SPICE_HTTP_PORT="${SPICE_HTTP_PORT:-8090}"
SPICE_FLIGHT_HOST="${SPICE_FLIGHT_HOST:-localhost}"
SPICE_FLIGHT_PORT="${SPICE_FLIGHT_PORT:-50051}"

echo "[1/2] Probando HTTP SQL en http://${SPICE_HTTP_HOST}:${SPICE_HTTP_PORT}/v1/sql"
HTTP_OUT=$(curl -sS -X POST "http://${SPICE_HTTP_HOST}:${SPICE_HTTP_PORT}/v1/sql" \
  -H "Content-Type: text/plain" \
  --data-binary "SELECT 1 AS ok;")

if [[ "${HTTP_OUT}" != *'"ok":1'* ]]; then
  echo "ERROR: respuesta inesperada de HTTP SQL: ${HTTP_OUT}"
  exit 1
fi

echo "OK: HTTP SQL responde correctamente: ${HTTP_OUT}"

echo "[2/2] Probando puerto Flight SQL ${SPICE_FLIGHT_HOST}:${SPICE_FLIGHT_PORT}"
if command -v nc >/dev/null 2>&1; then
  if nc -z "${SPICE_FLIGHT_HOST}" "${SPICE_FLIGHT_PORT}"; then
    echo "OK: puerto Flight SQL abierto"
  else
    echo "ERROR: no se puede abrir ${SPICE_FLIGHT_HOST}:${SPICE_FLIGHT_PORT}"
    exit 1
  fi
else
  echo "WARN: 'nc' no esta instalado; omito check de puerto Flight SQL"
fi

TABLES_OUT=$(curl -sS -X POST "http://${SPICE_HTTP_HOST}:${SPICE_HTTP_PORT}/v1/sql" \
  -H "Content-Type: text/plain" \
  --data-binary "SHOW TABLES;")

# Si detecta datasets Ontario, valida presencia de las 10 tablas y una query federada real.
if [[ "${TABLES_OUT}" == *"mysql_drugbank_drugs_main"* ]] && [[ "${TABLES_OUT}" == *"mysql_kegg_compound_main"* ]]; then
  echo "[3/4] Validando datasets Ontario-10 en Spice"

  REQUIRED_TABLES=(
    mysql_affymetrix_probeset_main
    mysql_chebi_compound_main
    mysql_dailymed_drugs_main
    mysql_diseasome_diseases_main
    mysql_drugbank_drugs_main
    mysql_kegg_compound_main
    mysql_linkedct_agency_main
    mysql_medicare_drugs_main
    mysql_sider_drugs_main
    mysql_tcga_aliquot_main
  )

  MISSING=()
  for t in "${REQUIRED_TABLES[@]}"; do
    if [[ "${TABLES_OUT}" != *"${t}"* ]]; then
      MISSING+=("${t}")
    fi
  done

  if [[ ${#MISSING[@]} -gt 0 ]]; then
    echo "ERROR: faltan datasets Ontario en Spice: ${MISSING[*]}"
    exit 1
  fi
  echo "OK: los 10 datasets Ontario estan visibles en el endpoint SQL unico"

  echo "[4/4] Ejecutando query federada DrugBank <-> KEGG"
  FED_OUT=$(curl -sS -X POST "http://${SPICE_HTTP_HOST}:${SPICE_HTTP_PORT}/v1/sql" \
    -H "Content-Type: text/plain" \
    --data-binary "
SELECT
  d.primaryAccessionNo AS drugbank_id,
  d.keggCompoundId AS kegg_compound_id,
  k.title AS kegg_compound_title
FROM mysql_drugbank_drugs_main d
JOIN mysql_kegg_compound_main k ON d.keggCompoundId = k.Compound
WHERE d.keggCompoundId IS NOT NULL AND d.keggCompoundId <> ''
LIMIT 5;
")

  if [[ "${FED_OUT}" != *"drugbank_id"* ]]; then
    echo "ERROR: query federada sin resultado esperado: ${FED_OUT}"
    exit 1
  fi
  echo "OK: query federada responde: ${FED_OUT}"
fi

echo "Listo. Endpoint SQL unico operativo."
