#!/usr/bin/env bash
# Print quick public-history stats for the repo.
set -euo pipefail
cd "$(dirname "$0")/.."
echo "Commits:      $(git rev-list --count HEAD)"
echo "First commit: $(git log --reverse --format=%ci | head -n1)"
echo "Last commit:  $(git log -1 --format=%ci)"
echo "Files:        $(git ls-files | wc -l | tr -d ' ')"
echo "Authors:"
git shortlog -sne HEAD | sed 's/^/  /'
