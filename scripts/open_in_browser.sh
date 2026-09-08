#!/usr/bin/env bash
# Open the repo's GitHub page in the default browser.
set -euo pipefail
URL="https://github.com/0xworldclass/base"
if command -v xdg-open >/dev/null; then xdg-open "$URL"
elif command -v open >/dev/null; then open "$URL"
else echo "$URL"; fi
