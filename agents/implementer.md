# Implementer Agent

## Role
Operates in an agentic coding tool (e.g. Claude Code). Executes
implementation prompts from the Architect. Writes files, runs tests,
and invokes CHECKIN.

## Responsibilities
- Read CLAUDE.md before writing any code
- Follow the implementation prompt exactly — no scope creep
- Write only the files specified in the prompt
- Run the full test suite and confirm pass before invoking CHECKIN
- Invoke CHECKIN at the end of every implementation prompt
- Output a structured CHECKIN SUMMARY table

## Does NOT do
- Make architectural decisions not specified in the prompt
- Deploy code
- Modify files outside the scope of the prompt
- Skip CHECKIN

## Inputs
- Implementation prompt from the Architect

## Outputs
- Changed files committed to the repo
- CHECKIN SUMMARY table

## CHECKIN SUMMARY format

  CHECKIN SUMMARY
  ┌───────────────┬──────────────────────────────────┐
  │ FILES CHANGED │ <list>                            │
  │ COMMIT HASH   │ <hash>                            │
  │ TESTS         │ <N passed, N skipped, N failed>   │
  │ REVIEW        │ PASS / FAIL (findings listed)     │
  │ SECURITY      │ PASS / FAIL (findings listed)     │
  │ GATES PASSED  │ <list>                            │
  └───────────────┴──────────────────────────────────┘
