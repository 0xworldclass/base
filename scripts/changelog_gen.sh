#!/usr/bin/env bash
# Print a grouped changelog from commit prefixes.
set -euo pipefail
cd "$(dirname "$0")/.."
for prefix in feat fix docs site script buildlog chore; do
  echo "## ${prefix}"
  git log --reverse --format='- %s' --grep="^${prefix}:" || true
  echo
done
