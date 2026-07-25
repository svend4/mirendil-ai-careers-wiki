# Compute capacity review

## Cadence

Еженедельно, плюс при large run requests

## Purpose

Управлять GPU, inference, eval и RL capacity между production, release gates и exploratory work.

## Required inputs

- Queue utilization
- Large compute requests
- Failed/aborted runs
- Cost per accepted experiment
- Upcoming release/eval needs

## Decisions this review should make

- Approve, defer or resize compute request.
- Adjust quotas or priority class.
- Open infra or scheduling follow-up.

## Outputs

- Capacity decision log
- Updated compute requests
- Dashboard or alert changes

## Anti-patterns to avoid

- Review без decision или owner.
- Status update вместо evidence-based discussion.
- Missing evidence не превращается в action item.
- Повторяющиеся incidents не попадают в [anti-patterns/remediations](../300-anti-patterns-remediations/README.md).

## Links

- [Evidence packets](../290-evidence-packets/README.md)
- [Decision records](../280-decision-record-examples/README.md)
- [Metrics/observability](../150-metrics-observability/README.md)
- [Implementation backlog](../110-implementation-backlog/README.md)
