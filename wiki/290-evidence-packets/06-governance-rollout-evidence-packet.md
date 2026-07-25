# Governance rollout evidence packet

## Назначение

Показать, что governance policies встроены в workflow, tools и audit, а не лежат отдельным документом.

## Когда использовать

- После соответствующей [capstone lab](../270-capstone-labs/06-governance-rollout-capstone.md).
- Перед release, gate review, incident review или roadmap decision.
- Когда нужно передать context другому owner без устного рассказа.

## Состав пакета

- Policy baseline and owners
- Tool/policy enforcement points
- Approval and exception examples
- Audit event samples
- Governance health metrics

## Acceptance condition

Governance owner видит enforcement path, open exceptions, latency и residual risk.

## Минимальные metadata

| Поле | Что указать |
| --- | --- |
| Owner | человек или команда, принимающая решение |
| Scope | workflow, model, dataset, tool, incident или release |
| Evidence date | дата последнего обновления evidence |
| Decision needed | ship, block, iterate, rollback, approve exception, investigate |
| Linked record | decision record или backlog item |

## Review checklist

- Evidence связан с конкретным decision.
- Нет claims без trace, eval, metric, artifact или policy reference.
- Risks и assumptions видны reviewer.
- Есть stop/rollback/next-step logic.
- Follow-ups можно перенести в [implementation backlog](../110-implementation-backlog/README.md).

## Связанные разделы

- [Artifact library](../140-artifact-library/README.md)
- [Decision record examples](../280-decision-record-examples/README.md)
- [Protocols/contracts](../200-protocols-contracts/README.md)
- [Quality gates](../85-quality-gates/README.md)
