#!/usr/bin/env bash
# "Build" the site: it is static, so building means copying to dist/.
set -euo pipefail
cd "$(dirname "$0")/.."
rm -rf dist/site
mkdir -p dist
cp -r site dist/site
echo "site copied to dist/site"
