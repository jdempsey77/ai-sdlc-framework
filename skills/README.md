# Skills

Skills are markdown files Claude Code reads before performing a task.
They encode repeatable agent behaviors so you invoke them with one line
instead of re-explaining the process every prompt.

## How to use a skill

At the top of any implementation prompt, add:

  Read skills/code-review/SKILL.md and perform a code review.

Or chain them:

  Read skills/code-review/SKILL.md and skills/security/SKILL.md,
  then run CHECKIN on the current repo state.

## How to install skills in your own project

Copy the skills/ directory into your project repo. Then customize
the {{CUSTOMIZE}} blocks in each SKILL.md to match your project's
domain rules and security requirements.

There is no install script — skills are just markdown files.
Put them wherever makes sense for your repo layout and reference
them by path in your prompts.

## Available skills

| Skill                          | Purpose                                      |
|--------------------------------|----------------------------------------------|
| skills/code-review/SKILL.md    | R1 Skeptic + R2 Tester + R3 Domain Expert    |
| skills/security/SKILL.md       | 4-lens security review                       |
| skills/architect-onboarding/   | Bootstrap a new project into the framework   |
