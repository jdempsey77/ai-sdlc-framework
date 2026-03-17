# Code Review Skill

When invoked, perform a three-reviewer code review on the current diff
or on the files specified in the invoking prompt.

## How to invoke

  Read skills/code-review/SKILL.md and review the changes in this session.

---

## R1 — Skeptic

Assume the implementation is wrong until proven otherwise.
Review for: edge cases, race conditions, incorrect assumptions,
missing error handling, silent failures.

Ask for every changed function or method:
- What happens if this is called before initialization is complete?
- What happens if any external dependency returns None, empty, or errors?
- Is there a race condition between concurrent operations?
- Does this fail silently instead of raising?
- What is the failure mode if this is called twice in quick succession?

## R2 — Tester

Review test quality and coverage.
- Are new tests actually testing the change, or testing a mock of it?
- Are edge cases covered: empty input, None, boundary values?
- Do tests clean up after themselves?
- Would these tests catch a regression if the implementation were reverted?
- Are test names descriptive of behavior, not implementation detail?

## R3 — Domain Expert

Apply the domain invariants below. Any violation is at minimum MEDIUM.

{{CUSTOMIZE: Replace this block with your project's domain rules.
Write them as a flat list of invariants. Each rule should state
what is required and what severity a violation carries.

Example:
- All database writes must be wrapped in a transaction. Non-atomic writes are HIGH.
- API responses must be validated against the schema before use. Violation is MEDIUM.
- The payment processor must never be called with amount <= 0. Violation is HIGH.
}}

---

## Output format

Produce a structured report:

  CODE REVIEW
  ┌──────────┬────────────────────────────────────────────────┐
  │ Reviewer │ Findings                                       │
  ├──────────┼────────────────────────────────────────────────┤
  │ R1       │ [HIGH/MEDIUM/INFO] <finding> — or PASS         │
  │ R2       │ [HIGH/MEDIUM/INFO] <finding> — or PASS         │
  │ R3       │ [HIGH/MEDIUM/INFO] <finding> — or PASS         │
  └──────────┴────────────────────────────────────────────────┘
  RESULT: PASS / FAIL (any HIGH = FAIL)

List every finding explicitly. Do not summarize. PASS means zero findings.

## Severity levels

| Level  | Meaning                                                    |
|--------|------------------------------------------------------------|
| HIGH   | Blocks deploy. Must be resolved.                           |
| MEDIUM | Must be acknowledged. Architect decides fix-now or log-it. |
| INFO   | Logged for awareness. Does not block.                      |
