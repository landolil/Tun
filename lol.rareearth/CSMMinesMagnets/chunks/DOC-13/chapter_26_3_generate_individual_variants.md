# 3. Generate individual variants (parallel)
for heuristic in williams keymaker elsegundo bakerstreet shield; do
    generate_variant "$heuristic" "$CANONICAL_DOC" "$TRACEABILITY" &
done
wait
