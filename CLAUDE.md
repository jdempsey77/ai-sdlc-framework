# CLAUDE.md — ai-sdlc-framework

Read this before making any changes to this repo.

## What this repo is

`ai-sdlc-framework` is a documentation-only framework. There is no
application code, no tests, and no deploy pipeline. The deliverable
is a set of markdown files that others can adopt and customize.

## Repo structure

  agents/        — One file per agent role. Generic, tool-agnostic.
  gates/         — Gate definitions (CHECKIN and any future gates).
  templates/     — Prompt templates for Implementer, CHECKIN, Release.
  skills/        — SKILL.md files an adopter copies into their own project
                   and invokes by name (architect-onboarding, code-review,
                   security) — see skills/README.md. (corrected 2026-09:
                   missing from this list before, despite three real skill
                   directories existing.)
  bootstrap.sh   — Interactive onboarding script (asks project name +
                   one-line description, prints a starter prompt to paste
                   into Claude.ai). (corrected 2026-09: also missing from
                   this list — the one piece of actual executable code in
                   an otherwise documentation-only repo.)
  README.md      — Overview and adoption guide.
  WORKFLOW.md    — End-to-end SDLC flow.
  CLAUDE.md      — This file.

## How to run it

    ./bootstrap.sh

Asks for a project name and one-sentence description, then prints an
onboarding prompt to paste into Claude.ai. This is the only executable
entry point — everything else is markdown an adopter reads or copies.

## Where it deploys / Secrets

Nowhere, and none — a documentation-only framework has no deploy target
and holds no credentials.

## Rules

### What you may change
- Any .md file in agents/, gates/, templates/
- README.md and WORKFLOW.md

### What you must not change
- CLAUDE.md unless explicitly instructed
- File names or directory structure without explicit instruction
  (structure is part of the framework contract)

### Writing style
- Write for a technical audience adopting this framework for the first time
- Be prescriptive where it matters (gate enforcement, severity levels)
- Use {{CUSTOMIZE}} markers for every section an adopter must replace
- Do not reference Filament IQ, Home Assistant, AppDaemon, or any specific project
- Prefer short paragraphs and tables over long prose
- Every agent file must have: Role, Responsibilities, Does NOT do, Inputs, Outputs sections

### {{CUSTOMIZE}} convention
Wrap any section an adopter must fill in like this:

  {{CUSTOMIZE: Brief description of what goes here.
  Example: Replace with your domain-specific invariants.}}

Never leave a {{CUSTOMIZE}} block empty. Always include a description
and, where helpful, an example of what good content looks like.

## Commit messages
- docs: <description> for content changes
- chore: <description> for repo structure changes

## No CHECKIN required
This repo has no code and no tests. Changes can be committed directly after review.

## Gotchas

- This framework is actively consumed elsewhere in this account —
  `apps/our-dram` has its own `WORKFLOW.md`, and its `CLAUDE.md` labels it
  "SDLC flow (from ai-sdlc-framework)" explicitly. A structural change here
  (renamed gate, changed agent role) has a real downstream consumer to
  check, not just this repo's own docs.
- Skills are invoked by telling Claude Code to read a specific
  `skills/<name>/SKILL.md` file in a prompt — they're not auto-loaded by
  being present in a project. An adopter has to actually copy `skills/`
  into their project and reference it (see `skills/README.md`'s "How to
  install skills in your own project").
