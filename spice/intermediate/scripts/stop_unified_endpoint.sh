#!/usr/bin/env bash
set -euo pipefail

INTER_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SPICE_DIR="$(cd "${INTER_DIR}/.." && pwd)"
ROOT_DIR="$(cd "${SPICE_DIR}/.." && pwd)"
ONTARIO_DIR="${ROOT_DIR}/datasources/mysql"
COMPOSE_FILE="${INTER_DIR}/docker-compose.yml"

echo "[1/3] Parando Ontop y PostgreSQL intermedio"
(
  cd "${INTER_DIR}"
  docker compose -f "${COMPOSE_FILE}" down
)

echo "[2/3] Parando Spice"
(
  cd "${SPICE_DIR}"
  docker compose stop spice
)

echo "[3/3] Parando MySQLs de Ontario"
(
  cd "${ONTARIO_DIR}"
  docker compose stop \
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

echo "Servicios detenidos."
