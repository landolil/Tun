# 4. Verify individual variants
for heuristic in williams keymaker elsegundo bakerstreet shield; do
    verify_variant $heuristic $DOC_ID || exit 1
done
