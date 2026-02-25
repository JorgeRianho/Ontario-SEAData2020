#!/usr/bin/env bash
set -euo pipefail

INTER_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SPICE_DIR="$(cd "${INTER_DIR}/.." && pwd)"
ROOT_DIR="$(cd "${SPICE_DIR}/.." && pwd)"
ONTARIO_DIR="${ROOT_DIR}/datasources/mysql"
COMPOSE_FILE="${INTER_DIR}/docker-compose.yml"
CONFIG_FILE="${INTER_DIR}/config/sync_config.json"
DATA_DIR="${INTER_DIR}/data"
PAGE_SIZE="${SPICE_PAGE_SIZE:-20000}"

if [[ ! -d "${ONTARIO_DIR}" ]]; then
  echo "ERROR: no existe ${ONTARIO_DIR}"
  exit 1
fi

if [[ ! -f "${CONFIG_FILE}" ]]; then
  echo "ERROR: no existe ${CONFIG_FILE}"
  exit 1
fi

echo "[1/7] Levantando las 10 bases MySQL de Ontario"
(
  cd "${ONTARIO_DIR}"
  docker compose up -d \
    mysql_affymetrix_idx \
    mysql_chebi_idx \
    mysql_dailymed_idx \
    mysql_diseasome_idx \
    mysql_drugbank_idx \
    mysql_kegg_idx \
    mysql_linkedct_idx \
    mysql_medicare_idx \
    mysql_sider_idx \
    mysql_tcga_idx
)

echo "[2/7] Activando spicepod para capa intermedia"
(
  cd "${SPICE_DIR}"
  bash scripts/use_ontario10_intermediate_spicepod.sh
)

echo "[3/7] Levantando Spice y validando endpoint SQL"
(
  cd "${SPICE_DIR}"
  docker compose up -d spice

  ready=0
  for i in $(seq 1 30); do
    if curl -sS -X POST "http://localhost:8090/v1/sql" \
      -H "Content-Type: text/plain" \
      --data-binary "SELECT 1 AS ok;" >/dev/null 2>&1; then
      ready=1
      break
    fi
    sleep 2
  done

  if [[ "${ready}" -ne 1 ]]; then
    echo "ERROR: Spice no respondio en /v1/sql tras 60s"
    exit 1
  fi

  bash scripts/test_spice_endpoints.sh
)

echo "[4/7] Levantando PostgreSQL intermedio"
(
  cd "${INTER_DIR}"
  docker compose -f "${COMPOSE_FILE}" up -d postgres_intermediate
)

echo "[5/7] Sincronizando datos desde Spice hacia PostgreSQL intermedio"
python3 "${INTER_DIR}/scripts/sync_from_spice_to_intermediate.py" \
  --config "${CONFIG_FILE}" \
  --compose-file "${COMPOSE_FILE}" \
  --data-dir "${DATA_DIR}" \
  --page-size "${PAGE_SIZE}"

echo "[6/7] Levantando Ontop unificado"
(
  cd "${INTER_DIR}"
  docker compose -f "${COMPOSE_FILE}" up -d --build ontop_unified
)

echo "[7/7] Listo"
echo "SPARQL endpoint unificado: http://localhost:18085/sparql"
echo "UI Ontop:                http://localhost:18085/"
echo ""
echo "Para refrescar datos tras cambios en Spice:"
echo "  bash ${INTER_DIR}/scripts/refresh_intermediate_data.sh"
