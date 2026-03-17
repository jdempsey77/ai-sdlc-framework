#!/usr/bin/env bash
set -euo pipefail

# ── Collect project info ──────────────────────────────────────

printf "What is your project name? "
read -r PROJECT_NAME

printf "Describe your project in one sentence: "
read -r PROJECT_DESC

# ── Print onboarding prompt ───────────────────────────────────

clear

cat <<EOF
────────────────────────────────────────────────────────────────────
  ✓ Bootstrap complete. Copy the prompt below into Claude.ai:
────────────────────────────────────────────────────────────────────

I am adopting the ai-sdlc-framework for a new project.

Project name: ${PROJECT_NAME}
Description:  ${PROJECT_DESC}

Please onboard me into this framework. Specifically:

1. Confirm you understand the Architect/Implementer split and your role
   as my Architect agent in Claude.ai.

2. Based on my project description, suggest what my R3 Domain Expert
   rules in agents/code-review.md might look like. Give me 5-8 concrete
   invariants written in the format used in the framework.

3. Suggest what my domain-specific security lens (Lens 5 in
   agents/security.md) should cover. Give me 3-5 checks in the same
   format as the existing lenses.

4. Draft a smoke test template tailored to my project for the
   {{CUSTOMIZE}} block in agents/monitor.md.

5. Write my first implementation prompt using the template in
   templates/implement-prompt.md. The task: set up the initial project
   skeleton (directory structure, config files, dependencies).
EOF
