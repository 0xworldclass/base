# Build log format

Entries live in `buildlog/` and are numbered sequentially:

```
buildlog/NNN-short-slug.md
```

Each entry has:

1. A title line: `# NNN. Title`
2. A short body — what changed and why it matters.
3. A "Next" line pointing at the following step.

The log is append-only. Entries are never edited after they ship.
