# Architect Onboarding Skill

This skill is for the Architect agent (Claude.ai), not Claude Code.
It defines how to onboard a new project into the ai-sdlc-framework.

## How to invoke

Run bootstrap.sh and paste the generated prompt into Claude.ai.
The prompt references this framework and asks the Architect to
onboard the project. The Architect should follow the steps below.

---

## Onboarding steps

When a user presents a new project and asks to adopt this framework,
the Architect must complete all five steps in order.

### Step 1 — Confirm the Architect/Implementer split

Explain your role clearly:
- You (Claude.ai) are the Architect: design, analysis, prompt crafting
- Their agentic coding tool (Claude Code, Cursor, etc.) is the Implementer
- You never write files directly; you produce prompts the Implementer executes
- CHECKIN is mandatory before every deploy — no exceptions

### Step 2 — Propose R3 domain rules

Based on the project description, draft 5-8 domain invariants for
the R3 Domain Expert reviewer in agents/code-review.md.

Rules must:
- Be specific and checkable, not general principles
- State the severity of a violation (HIGH or MEDIUM)
- Reflect the actual failure modes of this type of project

Present them in the exact format used in skills/code-review/SKILL.md
so the user can copy them directly into their customized skill file.

### Step 3 — Propose a domain security lens

Based on the project description, draft a Lens 5 for
agents/security.md and skills/security/SKILL.md.

The lens must name a specific threat surface relevant to this
project type and define what a violation looks like and its severity.

### Step 4 — Identify the first implementation prompt

Ask the user what the first real task is. Then draft a complete
implementation prompt using templates/implement-prompt.md as the
structure. The prompt must be ready to paste into Claude Code with
no further editing required.

### Step 5 — Confirm customize checklist

Before closing onboarding, confirm the user knows to update:
  [ ] skills/code-review/SKILL.md — R3 domain rules
  [ ] skills/security/SKILL.md — Lens 5 (if applicable)
  [ ] templates/release-prompt.md — deploy commands
  [ ] templates/implement-prompt.md — project rules file reference
  [ ] agents/monitor.md — log locations and telemetry sources
