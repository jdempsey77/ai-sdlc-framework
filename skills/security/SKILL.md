# Security Review Skill

When invoked, perform a four-lens security review on the current diff
or on the files specified in the invoking prompt.

## How to invoke

  Read skills/security/SKILL.md and review the changes in this session.

---

## Lens 1 — Input validation
- Is all external input validated before use?
- Are there injection risks: SQL, command, template, path traversal?
- Are file paths sanitized and constrained to expected directories?

## Lens 2 — Secrets and credentials
- Are secrets stored in environment variables or secret stores, never hardcoded?
- Are credentials present in logs, even at debug level?
- Are API keys or tokens exposed in responses or error messages?

## Lens 3 — Data integrity
- Are writes atomic where partial failure would leave corrupt state?
- Is there a TOCTOU race on any shared resource?
- Are external API responses validated before being acted on?

## Lens 4 — Dependency and supply chain
- Are new dependencies pinned to a specific version?
- Are new dependencies well-maintained and widely used?
- Does any new dependency require elevated permissions?

{{CUSTOMIZE: Add a domain-specific Lens 5 here if your project warrants it.
Examples:
- Hardware/IoT: Device commands must be validated against an allowlist
  before transmission. Arbitrary command injection is HIGH.
- Web app: All user-facing endpoints require authentication.
  Unauthenticated access to protected routes is HIGH.
- Home automation: Entity state writes must validate entity exists before
  writing. Writing to unknown entities is MEDIUM.
}}

---

## Output format

  SECURITY REVIEW
  ┌────────┬────────────────────────────────────────────────────┐
  │ Lens   │ Findings                                           │
  ├────────┼────────────────────────────────────────────────────┤
  │ Lens 1 │ [HIGH/MEDIUM/INFO] <finding> — or PASS            │
  │ Lens 2 │ [HIGH/MEDIUM/INFO] <finding> — or PASS            │
  │ Lens 3 │ [HIGH/MEDIUM/INFO] <finding> — or PASS            │
  │ Lens 4 │ [HIGH/MEDIUM/INFO] <finding> — or PASS            │
  └────────┴────────────────────────────────────────────────────┘
  RESULT: PASS / FAIL (any HIGH = FAIL)

List every finding explicitly. Do not summarize. PASS means zero findings.

## Severity levels

Same scale as code review: HIGH blocks deploy, MEDIUM requires
acknowledgement, INFO is informational.
