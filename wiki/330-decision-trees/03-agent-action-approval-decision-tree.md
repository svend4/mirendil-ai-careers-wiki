# Agent action approval decision tree

## Decision question

Нужен ли human approval для agent action?

## Starting condition

Рассматривается action, который агент предлагает выполнить через tool, API, sandbox или workflow.

## Decision path

- Action read-only и low-risk? Разрешить с trace.
- Action пишет в workspace, но scoped и reversible? Разрешить с audit.
- Action external side effect, production state, restricted data или expensive compute? Требуется approval.
- Action irreversible, ambiguous или policy class неизвестен? Block until classified.
- Approval request содержит impact, risk, rollback и evidence? Если нет - request more context.

## Required evidence

- Tool contract
- Tool access policy
- Agent trace
- Approval request
- Audit event

## Possible outcomes

Allow, allow with audit, require approval, deny, classify tool first.

## Fallback

Если policy не покрывает action, открыть tool policy update и не выполнять действие до решения.

## Review checklist

- Decision не опирается на устный статус без evidence.
- Missing evidence превращается в action item.
- Outcome имеет owner, expiry или next review date.
- High-risk decision фиксируется через [decision record](../200-protocols-contracts/06-decision-record-schema.md).

## Links

- [Evidence packets](../290-evidence-packets/README.md)
- [Quality gates](../85-quality-gates/README.md)
- [Governance policies](../230-governance-policies/README.md)
- [Dashboard examples](../320-dashboard-examples/README.md)
