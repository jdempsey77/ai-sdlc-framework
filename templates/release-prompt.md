# Release Prompt Template

Use after CHECKIN passes and the Architect has approved DEPLOY.

---

CHECKIN passed. Deploy and release {{VERSION}}.

Deploy steps:
{{CUSTOMIZE: Insert your deploy commands here.
Example:
  ./scripts/deploy.sh --env production
  systemctl restart myapp
}}

Post-deploy:
1. Run smoke test: {{smoke test description from the implementation prompt}}
2. Confirm: {{expected success signal in logs or system state}}
3. If smoke test fails: rollback with {{rollback command}}

If smoke test passes, create release {{VERSION}}:
- Tag:              {{VERSION}}
- CHANGELOG entry:  {{summary of changes}}
- Version file(s):  {{path to version file}}
