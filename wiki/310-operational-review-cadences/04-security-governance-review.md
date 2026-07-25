# Security and governance review

## Cadence

Еженедельно для exceptions, ежемесячно для policy health

## Purpose

Проверить high-risk actions, exceptions, audit quality, data/tool access и open residual risks.

## Required inputs

- Policy exceptions register
- Audit event samples
- Restricted data/tool access events
- Incident follow-ups
- Risk register deltas

## Decisions this review should make

- Close, extend or escalate exception.
- Change policy enforcement point.
- Open incident or threat model update.

## Outputs

- Governance health note
- Updated risk register
- Policy/backlog follow-ups

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
