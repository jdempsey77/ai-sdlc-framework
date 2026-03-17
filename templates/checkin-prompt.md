# CHECKIN Prompt Template

Use when invoking CHECKIN explicitly after a multi-step implementation
where CHECKIN was deferred to the end.

---

Run CHECKIN on the current state of the repo.

Files changed in this session:
{{list files}}

R3 domain rules to apply:
{{paste relevant rules from agents/code-review.md}}

Output the CHECKIN SUMMARY table. List all HIGH and MEDIUM findings
explicitly. Do not summarize findings — quote them.
