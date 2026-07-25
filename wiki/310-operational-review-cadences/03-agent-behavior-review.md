# Agent behavior review

## Cadence

Еженедельно для active agent workflows, чаще при incidents

## Purpose

Отслеживать reliability, unsafe tool proposals, loop stalls, recovery и trace quality.

## Required inputs

- Agent traces
- Tool call denials
- Loop stall examples
- Approval requests
- User/reviewer feedback

## Decisions this review should make

- Tighten policy or tool contract.
- Add behavior regression eval.
- Change prompt scaffolding, state machine or recovery policy.

## Outputs

- Trace review notes
- Agent backlog items
- Updated anti-pattern remediation status

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
