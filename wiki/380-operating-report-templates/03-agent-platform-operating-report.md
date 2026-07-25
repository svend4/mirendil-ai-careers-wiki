# Agent platform operating report

## Audience

Agent Harness, Platform, Security, Product

## Period

Weekly or per major agent workflow

## Required sections

- Task completion by stop reason
- Tool denials and approval requests
- Loop stalls and recovery outcomes
- Trace quality gaps
- Unsafe proposals and mitigations

## Decisions this report should support

- Tighten tool policy
- Add behavior eval
- Improve trace UX or recovery state

## Core metrics

- Trace completeness
- Loop stall rate
- Approval latency

## Report skeleton

| Section | Content |
| --- | --- |
| Summary | 3-5 bullets: decisions, major changes, blocked items |
| Metrics | Dashboard movements and threshold breaches |
| Evidence | Links to traces, evals, incidents, release records or packets |
| Risks | New, changed or closed risks |
| Decisions | Ship/block/continue/stop/exception decisions |
| Follow-ups | Owner, due date and destination backlog/review |

## Quality bar

- Report can be read without attending the meeting.
- Every claim links to metric, trace, artifact, evidence packet or decision record.
- Follow-ups are owner-assigned and reviewable next cycle.
- Stale or missing evidence is visible.

## Links

- [Dashboard examples](../320-dashboard-examples/README.md)
- [Operational review cadences](../310-operational-review-cadences/README.md)
- [Decision records](../280-decision-record-examples/README.md)
- [SLO/error budgets](../360-slo-error-budgets/README.md)
