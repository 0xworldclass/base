#!/usr/bin/env bash
# Serve the static site locally.
set -euo pipefail
cd "$(dirname "$0")/../site"
PORT="${1:-8000}"
echo "Serving on http://localhost:${PORT}"
python3 -m http.server "${PORT}"
