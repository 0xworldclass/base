# Security notes

Building in public means being careful about what goes public.

## Never commit

- Secrets, tokens, API keys
- Private keys of any kind
- Personal data that is not ours to share

## Checks

- `scripts/verify.sh` greps for obvious secret patterns.
- Anything that looks like a secret fails the check loudly.

## Reporting

If you spot something that should not be public, open an issue and it
will be rotated and removed from history as needed.
