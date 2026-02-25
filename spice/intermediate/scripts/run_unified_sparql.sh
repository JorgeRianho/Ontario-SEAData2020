#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Uso: run_unified_sparql.sh <query.sparql>"
  exit 1
fi

QUERY_FILE="$1"
ENDPOINT="${ONTOP_SPARQL_ENDPOINT:-http://localhost:18085/sparql}"

if [[ ! -f "${QUERY_FILE}" ]]; then
  echo "ERROR: no existe ${QUERY_FILE}"
  exit 1
fi

curl -sS -G "${ENDPOINT}" \
  --data-urlencode "query@${QUERY_FILE}" \
  -H "Accept: application/sparql-results+json"
