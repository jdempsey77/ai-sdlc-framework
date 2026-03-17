# ai-sdlc-framework

A framework for structured software development using multiple AI agents.
This repo codifies a repeatable SDLC where each agent has a defined role,
clear inputs/outputs, and mandatory quality gates before deployment.

## Getting started

```bash
git clone <this-repo> && cd ai-sdlc-framework
chmod +x bootstrap.sh
./bootstrap.sh
```

The script asks for your project name and a one-sentence description,
then prints a ready-to-paste prompt for Claude.ai that onboards you
into the framework with your project context baked in.

## Philosophy

- **Architect/Implementer split**: Planning and analysis happen in a
  conversational AI (e.g. Claude.ai). Implementation happens in an agentic
  coding tool (e.g. Claude Code, Cursor, Copilot Workspace).
- **Named agents, defined roles**: Each agent has a specific job. No agent
  does everything.
- **Mandatory gates**: Code cannot be deployed without passing CHECKIN.
  CHECKIN requires both a Code Review pass and a Security pass.
- **Templates over improvisation**: Prompts are structured and repeatable,
  not ad-hoc.

## How to adopt

1. Copy this repo.
2. Fill in all {{CUSTOMIZE}} sections with your project specifics.
3. Document your domain rules in `agents/code-review.md`.
4. Use the templates in `templates/` as your starting point for every
   implementation prompt you send to your Implementer agent.

## Agent map

| Agent        | Tool              | Role                                    |
|--------------|-------------------|-----------------------------------------|
| Architect    | Conversational AI | Design, analysis, prompt crafting       |
| Orchestrator | Conversational AI | Routing, gate enforcement               |
| Implementer  | Agentic coder     | File writes, test execution             |
| Code Review  | Agentic coder     | R1 Skeptic, R2 Tester, R3 Domain Expert |
| Security     | Agentic coder     | 4-lens security review                  |
| Monitor      | Agentic coder     | Post-deploy validation and telemetry    |
