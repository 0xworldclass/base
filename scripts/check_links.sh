#!/usr/bin/env bash
# Check that relative links in markdown docs resolve.
set -euo pipefail
cd "$(dirname "$0")/.."
fail=0
while IFS= read -r md; do
  dir=$(dirname "$md")
  for link in $(grep -oE '\]\([^)#]+\)' "$md" | sed -E 's/\]\(([^)#]+)\)/\1/' | grep -v '^http'); do
    if [ ! -e "${dir}/${link}" ]; then
      echo "broken link in ${md}: ${link}"
      fail=1
    fi
  done
done < <(find docs -name '*.md')
exit "${fail}"
