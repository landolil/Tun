#!/bin/bash
# Migration Script: Move lilipad.land content to new project structure

set -euo pipefail

SRC_ROOT="/workspace/app/lilipad.land"
DST_ROOT="/workspace/app/projects/tardigradia-franchise"

echo "=== Migrating lilipad.land to tardigradia-franchise ==="

# Create destination structure
mkdir -p "${DST_ROOT}/"{docs,src,assets,scripts,archives,sessions,routes,ROOT}

# 1. Vision & Mission -> docs/vision-mission/
echo "Migrating Vision & Mission..."
mkdir -p "${DST_ROOT}/docs/vision-mission"
cp -r "${SRC_ROOT}/01_Vision_and_Mission" "${DST_ROOT}/docs/vision-mission/"

# 2. Legal & Contracts -> docs/legal/
echo "Migrating Legal & Contracts..."
mkdir -p "${DST_ROOT}/docs/legal"
cp -r "${SRC_ROOT}/02_Legal_and_Contracts" "${DST_ROOT}/docs/legal/"

# 3. Shows -> src/shows/
echo "Migrating Shows..."
mkdir -p "${DST_ROOT}/src/shows"
cp -r "${SRC_ROOT}/03_Show_MayaTanaBuju_MTB" "${DST_ROOT}/src/shows/maya-tana-buju"
cp -r "${SRC_ROOT}/04_Playhouse_MidsummerNightsDream" "${DST_ROOT}/src/shows/midsummer-nights-dream"

# 4. Characters & 3D Models -> assets/characters/
echo "Migrating Characters & 3D Models..."
mkdir -p "${DST_ROOT}/assets/characters"
cp -r "${SRC_ROOT}/05_Characters_and_3D_Models" "${DST_ROOT}/assets/characters/"

# 5. Animation Tests -> assets/animation-tests/
echo "Migrating Animation Tests..."
mkdir -p "${DST_ROOT}/assets/animation-tests"
cp -r "${SRC_ROOT}/06_Animation_and_Storyboard_Tests" "${DST_ROOT}/assets/animation-tests/"

# 6. Merchandise -> assets/merchandise/
echo "Migrating Merchandise..."
mkdir -p "${DST_ROOT}/assets/merchandise"
cp -r "${SRC_ROOT}/07_Merchandise_Previews_and_Listings" "${DST_ROOT}/assets/merchandise/"

# 7. Apps -> src/apps/
echo "Migrating Apps..."
mkdir -p "${DST_ROOT}/src/apps"
cp -r "${SRC_ROOT}/08_Apps_B4C_BirdsForCats" "${DST_ROOT}/src/apps/birds-for-cats"

# 8. Business -> docs/business/
echo "Migrating Business & Accounts..."
mkdir -p "${DST_ROOT}/docs/business"
cp -r "${SRC_ROOT}/09_Business_and_Accounts" "${DST_ROOT}/docs/business/"

# 9. Index files -> docs/indexes/
echo "Migrating Index files..."
mkdir -p "${DST_ROOT}/docs/indexes"
cp "${SRC_ROOT}/INDEX_V2.csv" "${DST_ROOT}/docs/indexes/"
cp "${SRC_ROOT}/INDEX_V2_CURATED.csv" "${DST_ROOT}/docs/indexes/"

# Create migration manifest
cat > "${DST_ROOT}/docs/MIGRATION_MANIFEST.md" <<EOF
# Migration Manifest

**Source**: /workspace/app/lilipad.land
**Destination**: /workspace/app/projects/tardigradia-franchise/
**Date**: $(date -Iseconds)

## Mapped Directories

| Source | Destination | Category |
|--------|-------------|----------|
| 01_Vision_and_Mission/ | docs/vision-mission/ | Documentation |
| 02_Legal_and_Contracts/ | docs/legal/ | Documentation |
| 03_Show_MayaTanaBuju_MTB/ | src/shows/maya-tana-buju/ | Source/Production |
| 04_Playhouse_MidsummerNightsDream/ | src/shows/midsummer-night-dream/ | Source/Production |
| 05_Characters_and_3D_Models/ | assets/characters/ | Assets |
| 06_Animation_and_Storyboard_Tests/ | assets/animation-tests/ | Assets |
| 07_Merchandise_Previews_and_Listings/ | assets/merchandise/ | Assets |
| 08_Apps_B4C_BirdsForCats/ | src/apps/birds-for-cats/ | Source/Apps |
| 09_Business_and_Accounts/ | docs/business/ | Documentation |
| INDEX_V2.csv | docs/indexes/ | Index |
| INDEX_V2_CURATED.csv | docs/indexes/ | Index |

## File Counts (Pre-Migration)
EOF

find "${SRC_ROOT}" -type f | wc -l >> "${DST_ROOT}/docs/MIGRATION_MANIFEST.md"
echo " files total" >> "${DST_ROOT}/docs/MIGRATION_MANIFEST.md"

echo "=== Migration Complete ==="
echo "Content migrated to: ${DST_ROOT}"
echo "Manifest: ${DST_ROOT}/docs/MIGRATION_MANIFEST.md"