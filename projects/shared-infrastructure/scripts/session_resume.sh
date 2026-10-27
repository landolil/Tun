#!/bin/bash
# Session Resume Script
# Resumes a specific previous session by ID

set -euo pipefail

PROJECT_ROOT="/workspace/app"
PROJECT_NAME="${1:-}"
SESSION_ID="${2:-}"

if [ -z "${PROJECT_NAME}" ] || [ -z "${SESSION_ID}" ]; then
    echo "Usage: $0 <project_name> <session_id>"
    echo "Available projects:"
    ls -1 "${PROJECT_ROOT}/projects/" | grep -v shared-infrastructure
    exit 1
fi

PROJECT_DIR="${PROJECT_ROOT}/projects/${PROJECT_NAME}"
ARCHIVE_DIR="${PROJECT_DIR}/archives/sessions/${SESSION_ID}"
ROUTES_DIR="${PROJECT_DIR}/routes"
ROOT_DIR="${PROJECT_DIR}/ROOT"

if [ ! -d "${ARCHIVE_DIR}" ]; then
    echo "Session archive not found: ${ARCHIVE_DIR}"
    echo "Available sessions:"
    ls -1 "${PROJECT_DIR}/archives/sessions/" 2>/dev/null || echo "  (none)"
    exit 1
fi

echo "=== Resuming Session ==="
echo "Project: ${PROJECT_NAME}"
echo "Session ID: ${SESSION_ID}"

# Create current directories
mkdir -p "${ROUTES_DIR}" "${ROOT_DIR}"

# Restore routes
ROUTES_ZIP=$(ls -1 "${ARCHIVE_DIR}"/routes_*.zip 2>/dev/null | head -1 || true)
if [ -n "${ROUTES_ZIP}" ]; then
    echo "Restoring routes from ${ROUTES_ZIP}..."
    (cd "${PROJECT_DIR}" && unzip -o "${ROUTES_ZIP}")
else
    echo "No routes archive found for this session"
fi

# Restore ROOT
ROOT_ZIP=$(ls -1 "${ARCHIVE_DIR}"/ROOT_*.zip 2>/dev/null | head -1 || true)
if [ -n "${ROOT_ZIP}" ]; then
    echo "Restoring ROOT from ${ROOT_ZIP}..."
    (cd "${PROJECT_DIR}" && unzip -o "${ROOT_ZIP}")
else
    echo "No ROOT archive found for this session"
fi

# Update session status
SESSION_FILE="${PROJECT_DIR}/sessions/${SESSION_ID}.json"
if [ -f "${SESSION_FILE}" ]; then
    # Update status to resumed using sed (no python dependency)
    sed -i 's/"status": "active"/"status": "resumed"/' "${SESSION_FILE}"
    sed -i "s/\"started_at\": \"[^\"]*\"/\"started_at\": \"$(date -Iseconds)\"/" "${SESSION_FILE}"
    echo "Session status updated to 'resumed'"
fi

echo ""
echo "=== Session Resumed ==="
echo "Working directories restored:"
echo "  Routes: ${ROUTES_DIR}"
echo "  ROOT:   ${ROOT_DIR}"
echo ""
echo "To end this resumed session, run:"
echo "  ${PROJECT_ROOT}/projects/shared-infrastructure/scripts/session_cleanup.sh ${SESSION_ID} ${PROJECT_NAME}"