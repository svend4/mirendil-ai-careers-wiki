# Sandbox incident evidence packet

## Назначение

Собрать расследование agent/sandbox incident в воспроизводимый пакет.

## Когда использовать

- После соответствующей [capstone lab](../270-capstone-labs/03-sandbox-incident-capstone.md).
- Перед release, gate review, incident review или roadmap decision.
- Когда нужно передать context другому owner без устного рассказа.

## Состав пакета

- Timeline from trace and audit events
- Threat model delta
- Policy diff and detection rule
- Affected artifacts and data classes
- Follow-up backlog with owners

## Acceptance condition

Security reviewer может объяснить root cause, blast radius, residual risk и prevention plan.

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
