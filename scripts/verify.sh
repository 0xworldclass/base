#!/usr/bin/env bash
# Fail loudly if anything that looks like a secret is committed.
set -euo pipefail
cd "$(dirname "$0")/.."
if git grep -nE '(BEGIN (RSA|OPENSSH|EC) PRIVATE KEY)|(gh[pousr]_[A-Za-z0-9]{20,})|(sk-[A-Za-z0-9]{20,})' -- ':!.work' ':!scripts/verify.sh'; then
  echo 'Possible secret found — refusing to pass.' >&2
  exit 1
fi
echo 'OK: no obvious secrets in tracked files.'
