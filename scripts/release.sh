#!/usr/bin/env bash
# Run the pre-release checklist.
set -euo pipefail
cd "$(dirname "$0")/.."
echo '== verify =='
./scripts/verify.sh
echo '== links =='
./scripts/check_links.sh
echo '== stats =='
./scripts/stats.sh
echo 'All checks passed. Tag when ready:'
echo '  git tag -a vX.Y.Z -m "release vX.Y.Z" && git push origin vX.Y.Z'
