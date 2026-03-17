# Implementation Prompt Template

Copy this template for every prompt sent to the Implementer agent.
Fill in all sections. Do not leave decisions to the Implementer
that should have been made during design.

---

## Task: {{TASK TITLE}}

Read CLAUDE.md before starting.

────────────────────────────────────────────────────────
CONTEXT
────────────────────────────────────────────────────────
{{Describe the bug or feature. For bugs, include root cause.
For features, include the goal and design decisions already made.}}

────────────────────────────────────────────────────────
FILES TO CHANGE
────────────────────────────────────────────────────────
  MODIFY: {{file path}} — {{what to change}}
  CREATE: {{file path}} — {{what it should contain}}
  DELETE: {{file path}} — {{why it is being removed}}

────────────────────────────────────────────────────────
IMPLEMENTATION
────────────────────────────────────────────────────────
{{Specific implementation instructions. Be explicit.}}

────────────────────────────────────────────────────────
CONSTRAINTS
────────────────────────────────────────────────────────
- {{Thing the Implementer must not do}}
- {{Invariant that must be preserved}}

────────────────────────────────────────────────────────
TESTS
────────────────────────────────────────────────────────
{{Describe tests to add or modify. List specific cases.}}

────────────────────────────────────────────────────────
SMOKE TEST (for Monitor Agent post-deploy)
────────────────────────────────────────────────────────
{{Describe what to look for in logs or system state after deploy
to confirm the change worked correctly.}}

────────────────────────────────────────────────────────
GATE
────────────────────────────────────────────────────────
  [ ] All tests pass
  [ ] {{Any additional project-specific gate checks}}

Then run CHECKIN and output the CHECKIN SUMMARY table.
