#!/usr/bin/env bash
# Print a digest of recent public commits.
set -euo pipefail
cd "$(dirname "$0")/.."
COUNT="${1:-10}"
git log -"${COUNT}" --format='%h %ci %s'
