#!/bin/bash
# Session Start Script
# Initializes a new session for a project, restores from latest archive if needed

set -euo pipefail

PROJECT_ROOT="/workspace/app"
PROJECT_NAME="${1:-}"
SESSION_ID="${2:-$(date +%Y%m%d_%H%M%S)}"

if [ -z "${PROJECT_NAME}" ]; then
    echo "Usage: $0 <project_name> [session_id]"
    echo "Available projects:"
    ls -1 "${PROJECT_ROOT}/projects/" | grep -v shared-infrastructure
    exit 1
fi

PROJECT_DIR="${PROJECT_ROOT}/projects/${PROJECT_NAME}"
ARCHIVE_DIR="${PROJECT_DIR}/archives/sessions"
ROUTES_DIR="${PROJECT_DIR}/routes"
ROOT_DIR="${PROJECT_DIR}/ROOT"

echo "=== Session Start ==="
echo "Project: ${PROJECT_NAME}"
echo "Session ID: ${SESSION_ID}"
echo "Project Dir: ${PROJECT_DIR}"

# Create project directories if they don't exist
mkdir -p "${PROJECT_DIR}/"{docs,src,assets,scripts,archives,sessions,routes,ROOT}
mkdir -p "${ARCHIVE_DIR}"
mkdir -p "${ROUTES_DIR}"
mkdir -p "${ROOT_DIR}"

# Find latest session archive to restore from
LATEST_ARCHIVE=$(ls -1t "${ARCHIVE_DIR}"/session_manifest.json 2>/dev/null | head -1 || true)

if [ -n "${LATEST_ARCHIVE}" ]; then
    LATEST_SESSION_DIR=$(dirname "${LATEST_ARCHIVE}")
    echo "Found previous session: ${LATEST_SESSION_DIR}"
    
    # Restore routes if archive exists
    ROUTES_ZIP=$(ls -1 "${LATEST_SESSION_DIR}"/routes_*.zip 2>/dev/null | head -1 || true)
    if [ -n "${ROUTES_ZIP}" ]; then
        echo "Restoring routes from ${ROUTES_ZIP}..."
        unzip -o "${ROUTES_ZIP}" -d "${PROJECT_DIR}/"
    fi
    
    # Restore ROOT if archive exists
    ROOT_ZIP=$(ls -1 "${LATEST_SESSION_DIR}"/ROOT_*.zip 2>/dev/null | head -1 || true)
    if [ -n "${ROOT_ZIP}" ]; then
        echo "Restoring ROOT from ${ROOT_ZIP}..."
        unzip -o "${ROOT_ZIP}" -d "${PROJECT_DIR}/"
    fi
else
    echo "No previous session found, starting fresh"
fi

# Create session tracking file
SESSION_FILE="${PROJECT_DIR}/sessions/${SESSION_ID}.json"
cat > "${SESSION_FILE}" <<EOF
{
  "session_id": "${SESSION_ID}",
  "project_name": "${PROJECT_NAME}",
  "started_at": "$(date -Iseconds)",
  "status": "active",
  "restored_from": "${LATEST_SESSION_DIR:-none}",
  "working_dirs": {
    "routes": "${ROUTES_DIR}",
    "root": "${ROOT_DIR}",
    "src": "${PROJECT_DIR}/src",
    "assets": "${PROJECT_DIR}/assets",
    "docs": "${PROJECT_DIR}/docs"
  }
}
EOF

echo "Session tracking created: ${SESSION_FILE}"
echo ""
echo "=== Session Ready ==="
echo "Working directories:"
echo "  Routes: ${ROUTES_DIR}"
echo "  ROOT:   ${ROOT_DIR}"
echo "  Src:    ${PROJECT_DIR}/src"
echo "  Assets: ${PROJECT_DIR}/assets"
echo "  Docs:   ${PROJECT_DIR}/docs"
echo ""
echo "To end session, run:"
echo "  ${PROJECT_ROOT}/projects/shared-infrastructure/scripts/session_cleanup.sh ${SESSION_ID} ${PROJECT_NAME}"