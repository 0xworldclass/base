#!/usr/bin/env bash
# Quick sanity checks on the working tree.
set -euo pipefail
cd "$(dirname "$0")/.."
test -f README.md || { echo 'missing README.md'; exit 1; }
test -f LICENSE || { echo 'missing LICENSE'; exit 1; }
test -d buildlog || { echo 'missing buildlog/'; exit 1; }
[ -z "$(git status --porcelain)" ] && echo 'clean tree' || echo 'tree has uncommitted changes'
echo 'healthcheck passed'
