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
  README.md      — Overview and adoption guide.
  WORKFLOW.md    — End-to-end SDLC flow.
  CLAUDE.md      — This file.

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
