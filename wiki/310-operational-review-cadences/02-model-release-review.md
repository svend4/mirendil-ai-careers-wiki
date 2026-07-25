# Model release review

## Cadence

Перед каждым internal или product-facing model release

## Purpose

Принять ship/block/exception решение по model candidate на основе evidence packet.

## Required inputs

- Model release evidence packet
- Eval bundle and regression summary
- Serving impact report
- Security/product risk notes
- Rollback plan

## Decisions this review should make

- Ship candidate.
- Block candidate and assign remediation.
- Approve bounded exception.

## Outputs

- Model release record
- Decision record
- Monitoring and rollback checklist

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
