#!/usr/bin/env bash
# Create the next numbered build log entry.
# Usage: ./scripts/new_entry.sh "Short title"
set -euo pipefail
cd "$(dirname "$0")/.."
title="${1:?usage: new_entry.sh \"Short title\"}"
n=$(ls buildlog | grep -E '^[0-9]{3}-' | wc -l | tr -d ' ')
next=$(printf '%03d' $((n + 1)))
slug=$(echo "$title" | tr '[:upper:]' '[:lower:]' | tr -cs 'a-z0-9' '-' | sed 's/-$//')
file="buildlog/${next}-${slug}.md"
printf '# %s. %s\n\nWhat changed and why.\n\nNext: \n' "${next#0}" "$title" > "$file"
echo "created ${file}"
