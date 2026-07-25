# Security governance operating report

## Audience

Security, governance owner, platform leads

## Period

Weekly for exceptions, monthly for health

## Required sections

- Open exceptions and expirations
- Restricted access events
- Audit gaps
- Incidents and follow-up aging
- Policy changes and proposed controls

## Decisions this report should support

- Close, extend or escalate exception
- Open incident or threat model update
- Change policy enforcement point

## Core metrics

- Unaudited restricted actions
- Open exception age
- Incident follow-up age

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
