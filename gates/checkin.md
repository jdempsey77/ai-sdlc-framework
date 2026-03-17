# CHECKIN Gate

## Purpose
CHECKIN is the mandatory quality gate between implementation and deploy.
It cannot be skipped. A deploy without a passing CHECKIN is a policy violation.

## What CHECKIN checks

  1. Tests pass       — full test suite, zero failures
  2. Code Review      — R1, R2, R3 all pass with 0 HIGH findings
  3. Security         — all 4 lenses pass with 0 HIGH findings

## How to invoke
Every implementation prompt must end with:

  Then run CHECKIN and output the CHECKIN SUMMARY table.

## On findings
- All HIGH and MEDIUM findings must be listed explicitly in the summary
- Architect reviews findings before issuing DEPLOY
- Architect may accept a MEDIUM with written rationale
- HIGHs must be fixed — no exceptions

## CHECKIN SUMMARY format

  CHECKIN SUMMARY
  ┌───────────────┬──────────────────────────────────┐
  │ FILES CHANGED │                                   │
  │ COMMIT HASH   │                                   │
  │ TESTS         │ N passed, N skipped, N failed     │
  │ REVIEW        │ PASS / FAIL                       │
  │ SECURITY      │ PASS / FAIL                       │
  │ GATES PASSED  │                                   │
  └───────────────┴──────────────────────────────────┘
