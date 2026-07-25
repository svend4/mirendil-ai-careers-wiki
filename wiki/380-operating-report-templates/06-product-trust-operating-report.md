# Product trust operating report

## Audience

Product Development, Design Engineer, Platform, beta owners

## Period

Biweekly during beta

## Required sections

- Workflow adoption and completion
- Trace understanding and approval friction
- Blocked/risky states encountered
- User feedback by severity
- Launch readiness changes

## Decisions this report should support

- Expand or hold beta
- Fix UX/reliability blocker
- Change metric or instrumentation

## Core metrics

- Time-to-understand trace
- Approval decision latency
- High-severity feedback age

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
