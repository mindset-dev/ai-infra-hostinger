#!/usr/bin/env bash
set -euo pipefail

# Non-invasive example: remote status check or targeted action.
# Usage: scripts/deploy.sh <project> [service...]
PROJECT="${1:-}"
shift || true

if [[ -z "${PROJECT}" ]]; then
  echo "Usage: $0 <project> [service...]"
  exit 1
fi

SSH_HOST="${HOSTINGER_SSH_HOST:-hostinger}"

echo "→ Checking remote Compose projects on ${SSH_HOST}..."
ssh "${SSH_HOST}" "docker compose ls"

# Example (commented): targeted pull & up
# ssh "${SSH_HOST}" "docker compose -p ${PROJECT} pull && docker compose -p ${PROJECT} up -d $*"
echo "ℹ️  This is a meta-repo helper. Edit to suit your workflow."
