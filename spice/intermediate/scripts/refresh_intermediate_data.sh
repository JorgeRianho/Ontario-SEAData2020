#!/usr/bin/env bash
set -euo pipefail

INTER_DIR="$(cd "$(dirname "$0")/.." && pwd)"
COMPOSE_FILE="${INTER_DIR}/docker-compose.yml"
CONFIG_FILE="${INTER_DIR}/config/sync_config.json"
DATA_DIR="${INTER_DIR}/data"
PAGE_SIZE="${SPICE_PAGE_SIZE:-20000}"

(
  cd "${INTER_DIR}"
  docker compose -f "${COMPOSE_FILE}" up -d postgres_intermediate
)

python3 "${INTER_DIR}/scripts/sync_from_spice_to_intermediate.py" \
  --config "${CONFIG_FILE}" \
  --compose-file "${COMPOSE_FILE}" \
  --data-dir "${DATA_DIR}" \
  --page-size "${PAGE_SIZE}"

echo "Refresco completado."
