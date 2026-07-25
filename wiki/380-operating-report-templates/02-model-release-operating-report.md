# Model release operating report

## Audience

Release owner, model evaluation, product, inference, security

## Period

Per release or release candidate

## Required sections

- Candidate scope and release decision
- Eval regressions and known limitations
- Serving impact and rollback readiness
- Exceptions requested or approved
- Post-release monitoring plan

## Decisions this report should support

- Ship, block, beta or exception
- Assign remediation owner
- Update release gate

## Core metrics

- Blocking regressions
- Rollback readiness
- Eval bundle completeness

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
