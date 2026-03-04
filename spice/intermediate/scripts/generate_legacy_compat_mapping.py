#!/usr/bin/env python3
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]  # .../Ontario-SEAData2020/spice
SYNC_CONFIG_PATH = ROOT / "intermediate" / "config" / "sync_config.json"
MAPPING_PATH = ROOT / "intermediate" / "mappings" / "mapping.ttl"

AUTO_LEGACY_BEGIN = "# BEGIN AUTO LEGACY FULL MAPS"
AUTO_LEGACY_END = "# END AUTO LEGACY FULL MAPS"
AUTO_FULL_BEGIN = "# BEGIN AUTO FULL MAPS"

NAMESPACE_BY_DB = {
    "drugbank": "http://www4.wiwiss.fu-berlin.de/drugbank/resource/drugbank/",
    "dailymed": "http://www4.wiwiss.fu-berlin.de/dailymed/resource/dailymed/",
    "diseasome": "http://www4.wiwiss.fu-berlin.de/diseasome/resource/diseasome/",
    "medicare": "http://www4.wiwiss.fu-berlin.de/medicare/resource/medicare/",
    "linkedct": "http://data.linkedct.org/resource/linkedct/",
    "kegg": "http://bio2rdf.org/ns/kegg#",
    "chebi": "http://bio2rdf.org/ns/chebi#",
    "sider": "http://bio2rdf.org/ns/sider#",
    "tcga": "http://tcga.deri.ie/schema/",
    "affymetrix": "http://bio2rdf.org/affymetrix_vocabulary:",
}


def sanitize_local(value: str) -> str:
    s = re.sub(r"[^A-Za-z0-9_]", "", value)
    if not s:
        s = "col"
    if s[0].isdigit():
        s = f"c{s}"
    return s


def sanitize_id(value: str) -> str:
    s = re.sub(r"[^A-Za-z0-9]+", "_", value).strip("_").lower()
    return s or "id"


def parse_original_columns(source_sql: str) -> list[str]:
    # source_sql expected as: SELECT <expr> AS alias, ... FROM ...
    m = re.search(r"(?is)^\s*select\s+(.*?)\s+from\s+", source_sql)
    if not m:
        return []
    select_expr = m.group(1)

    # Split on commas not inside double quotes
    parts = re.split(r',(?=(?:[^\"]*\"[^\"]*\")*[^\"]*$)', select_expr)
    originals: list[str] = []
    for p in parts:
        p = p.strip()
        am = re.search(r"(?is)^(.*?)\s+as\s+([A-Za-z_][A-Za-z0-9_]*)$", p)
        if not am:
            continue
        lhs = am.group(1).strip()
        lhs = lhs.strip('"')
        if "." in lhs:
            lhs = lhs.split(".")[-1]
        originals.append(lhs)
    return originals


def build_auto_legacy_block() -> str:
    data = json.loads(SYNC_CONFIG_PATH.read_text(encoding="utf-8"))
    tables = data.get("tables", [])
    full_specs = [t for t in tables if t.get("name", "").endswith("_full")]

    lines = [AUTO_LEGACY_BEGIN]
    for spec in sorted(full_specs, key=lambda x: x.get("name", "")):
        name = spec["name"]
        m = re.match(r"^mysql_([a-z0-9]+)_(.+)_full$", name)
        if not m:
            continue
        db = m.group(1)
        table = m.group(2)
        ns = NAMESPACE_BY_DB.get(db, f"http://example.org/{db}#")

        cols: list[str] = spec.get("columns", [])
        if not cols:
            continue

        originals = parse_original_columns(spec.get("source_sql", ""))
        # Align lengths; fallback to alias if parsing fails or differs
        if len(originals) != len(cols):
            originals = cols[:]

        subj_col = cols[0]
        map_id = f"AutoLegacy_{sanitize_id(db)}_{sanitize_id(table)}"
        target_schema = spec["target_schema"]
        target_table = spec["target_table"]

        lines.extend(
            [
                "",
                f"<#${map_id}>".replace("$", ""),
                "  a rr:TriplesMap ;",
                f'  rr:logicalTable [ rr:tableName "{target_schema}.{target_table}" ] ;',
                "  rr:subjectMap [",
                f'    rr:template "http://example.org/legacy/{db}/{sanitize_id(table)}/{{{subj_col}}}"',
                "  ] ;",
            ]
        )

        pom_lines: list[str] = []
        seen_predicates: set[str] = set()
        for col, original in zip(cols, originals):
            candidates = [sanitize_local(original), sanitize_local(col)]
            # Add a compact variant without underscores to catch many legacy names
            if "_" in col:
                candidates.append(sanitize_local(col.replace("_", "")))
            if "_" in original:
                candidates.append(sanitize_local(original.replace("_", "")))

            for local in candidates:
                if not local:
                    continue
                pred = ns + local
                if pred in seen_predicates:
                    continue
                seen_predicates.add(pred)
                pom_lines.append(
                    f'  rr:predicateObjectMap [ rr:predicate <{pred}> ; rr:objectMap [ rr:column "{col}" ] ]'
                )

        for i, line in enumerate(pom_lines):
            end = " ." if i == len(pom_lines) - 1 else " ;"
            lines.append(line + end)

    lines.append("")
    lines.append(AUTO_LEGACY_END)
    lines.append("")
    return "\n".join(lines)


def write_mapping_with_auto_legacy(block: str) -> None:
    content = MAPPING_PATH.read_text(encoding="utf-8")

    # Remove previous auto legacy block if present
    if AUTO_LEGACY_BEGIN in content and AUTO_LEGACY_END in content:
        pre = content.split(AUTO_LEGACY_BEGIN, 1)[0].rstrip()
        post = content.split(AUTO_LEGACY_END, 1)[1]
        content = pre + "\n\n" + post.lstrip("\n")

    if AUTO_FULL_BEGIN in content:
        pre = content.split(AUTO_FULL_BEGIN, 1)[0].rstrip()
        post = content.split(AUTO_FULL_BEGIN, 1)[1]
        new_content = pre + "\n\n" + block + "# BEGIN AUTO FULL MAPS" + post
    else:
        new_content = content.rstrip() + "\n\n" + block

    MAPPING_PATH.write_text(new_content, encoding="utf-8")


def main() -> None:
    block = build_auto_legacy_block()
    write_mapping_with_auto_legacy(block)
    print(f"OK: generated auto legacy compatibility block in {MAPPING_PATH}")


if __name__ == "__main__":
    main()
