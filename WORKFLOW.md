# SDLC Workflow

## End-to-end flow

  TRIGGER
    └─► ARCHITECT analyzes, designs solution, crafts implementation prompt
          └─► IMPLEMENTER executes prompt, runs tests
                └─► CHECKIN GATE
                      ├── Code Review (R1 + R2 + R3) — must PASS
                      └── Security (4 lenses) — must PASS
                            └─► DEPLOY
                                  └─► MONITOR validates post-deploy

## Gate rules

- CHECKIN is mandatory before any deploy. No exceptions.
- Any HIGH finding from Code Review or Security blocks deploy.
- MEDIUM findings must be explicitly acknowledged before proceeding.
- INFO findings are logged but do not block.

## Trigger types

| Trigger    | Flow                                                        |
|------------|-------------------------------------------------------------|
| Bug fix    | ARCHITECT → IMPLEMENTER → CHECKIN → DEPLOY → MONITOR       |
| Feature    | ARCHITECT (design) → ARCHITECT (prompt) → IMPLEMENTER →    |
|            | CHECKIN → DEPLOY → MONITOR                                  |
| Docs only  | IMPLEMENTER → CHECKIN (review only, skip security) → DEPLOY |
