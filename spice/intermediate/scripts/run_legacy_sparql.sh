#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Uso: $0 <query.sparql>" >&2
  exit 1
fi

QUERY_FILE="$1"
if [[ ! -f "$QUERY_FILE" ]]; then
  echo "No existe: $QUERY_FILE" >&2
  exit 1
fi

fix_query() {
  local f="$1"

  # 1) Targeted syntax fixes for legacy Ontario listings (without editing files)
  sed -E \
    -e 's|^PREFIX drugbank: <http://www4\.wiwiss\.fu-berlin\.de/drugbank/resource/drugtype/>|PREFIX drugtype: <http://www4.wiwiss.fu-berlin.de/drugbank/resource/drugtype/>|' \
    -e 's/\?drug \?drugbank:description/\?drug drugbank:description/g' \
    -e 's/\?durg/\?drug/g' \
    -e 's/(\?Chemicalreaction purl:title \?ReactionTitle)\s*$/\1 ./' \
    -e 's/\?dailymed:([A-Za-z_][A-Za-z0-9_]*)/\?dailymedDrug dailymed:\1/g' \
    "$f" | awk '
      {
        line=$0
        if (prev_semicolon == 1 && line ~ /^[[:space:]]*\?dailymedDrug[[:space:]]+dailymed:/) {
          sub(/^[[:space:]]*\?dailymedDrug[[:space:]]+/, "        ", line)
        }
        t=line
        sub(/[[:space:]]+$/, "", t)
        prev_semicolon = (t ~ /;$/)
        print line
      }
    ' | awk '
      BEGIN { has_select=0; where_line=0 }
      {
        l=tolower($0)
        if (l ~ /^[[:space:]]*(select|ask|construct|describe)[[:space:]]/) has_select=1
        if (where_line==0 && l ~ /^[[:space:]]*where[[:space:]]*\{/) where_line=NR
        lines[NR]=$0
      }
      END {
        if (has_select==0 && where_line>0) {
          for (i=1; i<where_line; i++) print lines[i]
          print "SELECT *"
          for (i=where_line; i<=NR; i++) print lines[i]
        } else {
          for (i=1; i<=NR; i++) print lines[i]
        }
      }
    '
}
FIXED_QUERY="$(fix_query "$QUERY_FILE")"
if [[ -z "${FIXED_QUERY//[[:space:]]/}" ]]; then
  echo "Query vacia: $QUERY_FILE" >&2
  exit 2
fi

printf "%s\n" "$FIXED_QUERY" | \
  docker compose -f "$(dirname "$0")/../docker-compose.yml" exec -T ontop_unified \
    sh -lc 'curl -sS -G --data-urlencode query@- http://localhost:8080/sparql'
