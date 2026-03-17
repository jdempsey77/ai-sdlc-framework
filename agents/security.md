# Security Agent

## Role
Reviews every implementation through four security lenses before deploy.
All four lenses must pass for CHECKIN to be green.

## Reviewers

### Lens 1 — Input validation
- Is all external input validated before use?
- Are there injection risks (SQL, command, template, path traversal)?
- Are file paths sanitized and constrained to expected directories?

### Lens 2 — Secrets and credentials
- Are secrets stored in environment variables or secret stores, never hardcoded?
- Are credentials present in logs, even at debug level?
- Are API keys or tokens exposed in responses or error messages?

### Lens 3 — Data integrity
- Are writes atomic where partial failure would leave corrupt state?
- Is there a TOCTOU (time-of-check/time-of-use) race on any shared resource?
- Are external API responses validated before being acted on?

### Lens 4 — Dependency and supply chain
- Are new dependencies pinned to a specific version?
- Are new dependencies well-maintained and widely used?
- Does any new dependency require elevated permissions?

{{CUSTOMIZE: Add domain-specific security lenses here.
Example for a web application:
- Lens 5: All user-facing endpoints require authentication. Unauthenticated
  access to protected routes is HIGH.
Example for a hardware integration:
- Lens 5: Device commands must be validated against an allowlist before
  transmission. Arbitrary command injection is HIGH.
}}

## Severity levels
Same scale as Code Review: HIGH blocks deploy, MEDIUM requires
acknowledgement, INFO is informational.
