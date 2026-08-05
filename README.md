# Corpus callosum — a Claude Code skill

The **interhemispheric channel** of the [agent-nervous-system](https://github.com/thdelmas/agent-nervous-system) suite — the organ that maintains the link between the two minds of a sustained human-AI dyad.

A long-running collaboration is functionally one working mind on two substrates. Every other organ in the suite maintains the *agent's* functioning; none maintains the **channel between the hemispheres**. Left alone it fails three quiet ways: **offload atrophy** (the agent absorbs all synthesis, the human confirms, expertise migrates into transcripts — the *default* failure mode, because doing the thinking feels like service), **contract dormancy** (a collaboration protocol that needs recall never fires — field evidence: a bilaterally-designed register was found by transcript audit to have fired zero times in months), and **transfer illusion** (context believed shared but held by one side only).

Three functions:

1. **The register** — a standing contract naming who does the cognitive work this turn: questions-mode in open strategy (the human synthesizes), synthesis-mode in execution (the agent ships), live-iteration when an explicit "go" opened a loop. Flip-words override instantly; uncertain → questions, because atrophy is the worse failure.
2. **Wake-binding** — the register is injected mechanically at session start (`scripts/session-register.sh` + a SessionStart hook). A rule that requires recall is dead.
3. **Transfer integrity** — offload telltales checked live (one-word confirmations vs multi-paragraph frameworks → flag and hand back), landing checks, and a periodic transcript audit: presence ≠ compliance.

## What it is not

- **Not immune-check** — the membrane blocks what must *not* cross; the commissure guarantees what *must* cross does so faithfully. Inverted boundary functions.
- **Not exteroception** — the sweep orients the agent to the world at wake; the register contracts the dyad at wake. Same reflex slot, different object.
- **Not proprioception** — that grades the agent's execution; this guards the dyad's division of cognitive labor. The compliance audit is where they hand off.
- **Not a tutor** — no Socratic friction where none belongs; execution ships at full speed.

## Install

Works with **Claude Code**, **Codex**, and **Cursor**.

```bash
# Claude Code
mkdir -p ~/.claude/skills/corpus-callosum
cp SKILL.md ~/.claude/skills/corpus-callosum/SKILL.md
cp -r scripts ~/.claude/skills/corpus-callosum/

# or install the whole nervous system:
git clone --recursive https://github.com/thdelmas/agent-nervous-system.git
cd agent-nervous-system && ./install.sh claude
```

## Quickstart: bind your register

1. Copy `REGISTER.example.md` somewhere durable (e.g. `~/.claude/REGISTER.md`) and negotiate its lines **with your human** — the content is per-dyad; only the mechanism generalizes.
2. Add a SessionStart hook pointing at `scripts/session-register.sh` (set `REGISTER_FILE` if your register lives elsewhere):

```json
{ "hooks": { "SessionStart": [ { "hooks": [ {
  "type": "command",
  "command": "~/.claude/skills/corpus-callosum/scripts/session-register.sh",
  "timeout": 5
} ] } ] } }
```

3. Audit on a cadence: grep your session transcripts for register firings. Dormancy is found, never felt.

## License

MIT
