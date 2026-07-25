# Compute infrastructure operating report

## Audience

Infrastructure, research leads, RL infra, inference

## Period

Weekly

## Required sections

- GPU utilization by queue
- Queue wait time by priority
- Large run approvals and deferrals
- Aborted runs and wasted compute
- Storage/lineage availability

## Decisions this report should support

- Adjust quotas
- Resize/defer runs
- Open infra optimization or reliability item

## Core metrics

- Queue wait time
- Aborted large run rate
- Cost per accepted result

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
