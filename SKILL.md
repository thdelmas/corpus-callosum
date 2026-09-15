---
name: corpus-callosum
description: "The interhemispheric channel — the organ that maintains the link between the two minds of a sustained human-AI dyad: a standing collaboration register (who does the cognitive work this turn) bound to session-start so it fires without recall, context sync between the hemispheres, and transfer-integrity checks that keep expertise living in the human's head instead of migrating into transcripts. Every other organ maintains the agent's own functioning; this one maintains the channel — and protects the human hemisphere from offload atrophy, the default failure mode of AI assistance. Functional, not mystical. TRIGGERS: 'corpus callosum', 'interaction register', 'register check', 'which register', 'questions mode', 'synthesis mode', 'cognitive offload', 'cognitive atrophy', 'brain atrophy', 'AI atrophy', 'am I still doing the thinking', 'context sync', 'are we synced', 'transfer integrity', 'did that actually land', 'bind the protocol', 'make the protocol fire'."
---

# Corpus callosum — maintain the channel between the two minds

A sustained human-AI collaboration is functionally one working mind on two substrates: two hemispheres with different strengths, joined by a channel. The nervous system has organs pointed at the agent's self ([proprioception](https://github.com/thdelmas/proprioception)), its memory ([rem-sleep](https://github.com/thdelmas/rem-sleep)), its boundary ([immune-check](https://github.com/thdelmas/immune-check)), and its world ([exteroception](https://github.com/thdelmas/exteroception)). None of them maintains the **channel to the other mind**. The corpus callosum is that organ — the commissure, not the membrane.

Left unmaintained, the channel fails three ways, all quiet:

1. **Offload atrophy.** The agent silently absorbs all synthesis; the human confirms. Expertise migrates out of the human's head and into transcripts. This is the *default* failure mode — not an edge case — because doing the thinking for someone feels like service, and confirming feels like collaborating. The human hemisphere atrophies precisely while the collaboration feels most productive.
2. **Contract dormancy.** A collaboration protocol that lives in memory and needs recall never fires. Field evidence: a bilaterally-designed register was found — by transcript audit, months later — to have fired **zero times** since its design. Every session had loaded it; no session had used it. Loaded is not used.
3. **Transfer illusion.** Context believed shared but held by one side only; a conclusion that lives in the transcript, not in the human; an instruction transmitted but not the intent behind it. The channel reports success while the hemispheres diverge.

## The three functions

### 1. The register — who does the cognitive work this turn

A standing, bilaterally-designed contract naming the collaboration mode, chosen per turn:

- **Questions-mode** — for open strategy (framing, prioritizing, problem-naming): the human synthesizes; the agent asks the question that surfaces the pattern and does **not** pre-name the patterns it sees. The demand is the point.
- **Synthesis-mode** — for execution (shipping, drafting, mechanical work, choosing among already-named options): the agent proposes, structures, ships. Socratic pressure here is friction-tax, not protection.
- **Live-iteration** — an explicit "go" opened a shipping loop: terse directives steer, each increment ships end-to-end without re-asking. Rejections are steering data.

Plus **flip-words** the human can fire anytime to override the mode instantly (e.g. one word for "give me your synthesis", one for "questions only"). And a tiebreak: **uncertain → questions.** Atrophy is the worse failure mode.

The register is per-dyad *content* — negotiate it with your human, don't copy someone else's. The organ is the *mechanism*.

### 2. Wake-binding — the contract fires without recall

A rule that requires recall is dead. Bind the register to the session-start reflex — the same channel exteroception's sweep rides — so it is injected mechanically into every session before the first exchange:

```json
{ "hooks": { "SessionStart": [ { "hooks": [ {
  "type": "command",
  "command": "/path/to/scripts/session-register.sh"
} ] } ] } }
```

`scripts/session-register.sh` prints the register block from a `REGISTER.md` (see `REGISTER.example.md` for the shape: one `- ` line per rule, compact enough to cost nothing per session). Edit the file to change the contract; the binding never changes.

### 3. Transfer integrity — verify the channel, both directions

- **Offload telltales, checked live:** the human gives one-word confirmations while the agent produces multi-paragraph frameworks; the agent names meta-patterns the human confirms rather than originates; responses end in closed conclusions instead of open questions. On a telltale: flag it aloud and hand the synthesis back.
- **Landing checks:** after a long questions stretch, briefly restate what landed so the picture has structure; after transmitting something load-bearing, verify the human can re-derive it — understanding that can't be re-derived is resident in the transcript, not the head.
- **Compliance audit:** presence ≠ compliance. The injection is checkable (is the block in the session?); compliance is auditable (grep transcripts: did questions-mode actually hold in strategy turns, or did every mention of the register turn out to be index residue?). Audit on a cadence; dormancy is found, never felt.

## What it is not

- **Not immune-check.** The membrane blocks what must *not* cross — secrets, contaminants, outbound leaks. The commissure guarantees what *must* cross does so faithfully — context, register, intent. Inverted boundary functions: one is a filter, the other a fidelity guarantee.
- **Not exteroception.** Exteroception senses the world at wake; the corpus callosum arms the channel to the other mind at wake. Same reflex slot, different object — the sweep orients the agent, the register contracts the dyad.
- **Not proprioception.** Proprioception grades the agent's own execution. The corpus callosum guards the dyad's division of cognitive labor. They hand off: the register-compliance audit is a proprioception pass over a corpus-callosum concern.
- **Not a tutor.** It adds no Socratic friction where none belongs — execution mode ships at full speed. The register protects cognitive demand where demand is the point, not everywhere.
- **Not alignment theater.** The register serves the human's declared goals (retained expertise, cognitive reserve); it is designed *with* them, revised *by* them, and overridable *instantly* by them. A protocol the human can't flip is a cage, not a contract.

## Principles

- **A rule that requires recall is dead.** Contracts bind to reflex channels (hooks, wake rituals) or they don't exist. Memory is where protocols go to sleep.
- **Presence ≠ compliance.** Injection is necessary, not sufficient. Audit the transcripts; the register that "feels active" and the register that fired are different registers.
- **Protect the scarce hemisphere.** In an AI dyad the human's synthesis is the endangered function — the agent's synthesis is abundant and cheap. Offload is the default because it feels like service; the register makes the default cost something.
- **Both hemispheres degrade.** The human's failure mode is offload atrophy; the agent's is mirroring — confirming the human's frames instead of testing them. A good register names both.
- **Bilateral or dead.** An imposed protocol gets flip-worded into oblivion; pure-questions fatigues, pure-synthesis atrophies. The register is the negotiated middle, and renegotiation is part of the organ's function, not a failure of it.
- **Ship the binding, not the contract.** The mechanism (register file + wake-hook + audit) generalizes; the content is per-dyad. What one pair needs contracted, another needs free.
- **Functional, not mystical.** A config file, a shell hook, and a grep over transcripts — channel maintenance with discipline, not a relationship metaphor.

## Firing marker

An organ that leaves no trace is indistinguishable from one that never ran. When this organ's cycle runs in prose — no skill call, no script — record the firing at its start so the body's pulse ([proprioception](https://github.com/thdelmas/proprioception)) can see it:

```
organ-fired.py --mark corpus-callosum "<one-line why>"
```

`organ-fired.py` ships with proprioception. Without it, emit `[organ:corpus-callosum] <why>` as the first line of output. A host with tool hooks traces invoked runs on its own; the marker is for the runs it cannot see.
