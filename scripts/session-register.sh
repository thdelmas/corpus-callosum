#!/usr/bin/env bash
# SessionStart hook: inject the dyad's interaction register so the collaboration
# contract fires without recall. See README.md — a rule that requires recall is dead.
#
# Register file resolution: $REGISTER_FILE, else ~/.claude/REGISTER.md,
# else the REGISTER.example.md shipped next to this script's parent dir.
set -u

here="$(cd "$(dirname "$0")" && pwd)"
REG="${REGISTER_FILE:-$HOME/.claude/REGISTER.md}"
[ -f "$REG" ] || REG="$here/../REGISTER.example.md"

if [ -f "$REG" ]; then
  echo "=== Interaction register — the dyad's collaboration contract (pick the register for THIS turn before answering) ==="
  grep '^- ' "$REG"
fi
