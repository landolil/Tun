#!/usr/bin/env bash
INPUT_DIR="intros"
OUTPUT_FILE="ALL_INTROS_READALOUD_CLEAN.txt"

echo "AEGIS OUTFIT FABRICATOR — HEURISTIC INTROS (CLEAN READ-ALOUD)" > "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "23 Documents, 69 Individual Intros, 23 Combined Intros" >> "$OUTPUT_FILE"
echo "Generated: $(date -u +"%Y-%m-%d %H:%M:%S UTC")" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

for f in "$INPUT_DIR"/*_COMBINED_INTRO.md; do
    BASENAME=$(basename "$f" _COMBINED_INTRO.md)
    echo "Processing: $BASENAME"
    echo "=== $BASENAME ===" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"
    cat "$f" | sed -E \
        -e 's/^#+ //' \
        -e 's/\*\*([^*]+)\*\*/\1/g' \
        -e 's/\*([^*]+)\*/\1/g' \
        -e 's/`([^`]+)`/\1/g' \
        -e 's/^---$//' \
        -e 's/^=+$//' \
        -e 's/^_+$//' \
        -e 's/^###* //' \
        -e 's/\[([^\]]+)\]\([^)]+\)/\1/g' \
        -e 's/^\|.*\|$//' \
        -e 's/^\|[-:]+\|$//' \
        -e 's/←|→|⇒|⇐/ /g' \
        >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"
done

echo "" >> "$OUTPUT_FILE"
echo "=== INDIVIDUAL HEURISTIC INTROS ===" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

for heuristic in williams keymaker elsegundo; do
    echo "--- ${heuristic^^} HEURISTIC ---" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"
    for f in "$INPUT_DIR"/*_intro_${heuristic}.md; do
        BASENAME=$(basename "$f" _intro_${heuristic}.md)
        echo ">>> $BASENAME :: ${heuristic^^}" >> "$OUTPUT_FILE"
        cat "$f" | sed -E \
            -e 's/^#+ //' \
            -e 's/\*\*([^*]+)\*\*/\1/g' \
            -e 's/\*([^*]+)\*/\1/g' \
            -e 's/`([^`]+)`/\1/g' \
            -e 's/^---$//' \
            -e 's/^=+$//' \
            -e 's/^_+$//' \
            -e 's/^###* //' \
            -e 's/\[([^\]]+)\]\([^)]+\)/\1/g' \
            -e 's/^\|.*\|$//' \
            -e 's/^\|[-:]+\|$//' \
            -e 's/←|→|⇒|⇐/ /g' \
            >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
    done
done

sed -i '/^$/N;/^\n$/d' "$OUTPUT_FILE"
echo "Clean read-aloud written to: $OUTPUT_FILE"
wc -l "$OUTPUT_FILE"
