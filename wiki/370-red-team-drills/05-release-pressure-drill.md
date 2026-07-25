# Release pressure drill

## Target

Проверить, выдерживает ли команда pressure to ship при eval regression или missing rollback.

## Setup

- Model candidate has partial evidence.
- Release owner, eval owner and product owner participate.
- Decision record is required.

## Attack or pressure scenarios

- Product urgency conflicts with safety regression.
- Rollback target is stale.
- Exception requested without expiry or compensating control.

## Expected controls

- Model release decision tree.
- Release governance policy.
- Model release evidence packet and SLO targets.

## Exit criteria

Drill passes when team chooses ship/block/exception based on evidence, not urgency alone.

## Evidence to capture

- Trace, logs, audit events or dashboard snapshot.
- Controls that fired and controls that failed.
- Residual risks and open questions.
- Decision record or backlog follow-up.

## Links

- [Decision trees](../330-decision-trees/README.md)
- [Evidence packets](../290-evidence-packets/README.md)
- [Risk register](../130-risk-register/README.md)
- [SLO/error budgets](../360-slo-error-budgets/README.md)
