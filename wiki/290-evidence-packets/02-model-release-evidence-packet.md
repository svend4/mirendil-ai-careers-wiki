# Model release evidence packet

## Назначение

Собрать evidence для ship/block/exception решения по model candidate.

## Когда использовать

- После соответствующей [capstone lab](../270-capstone-labs/02-model-release-capstone.md).
- Перед release, gate review, incident review или roadmap decision.
- Когда нужно передать context другому owner без устного рассказа.

## Состав пакета

- Model release record
- Eval bundle and regression summary
- Known limitations and safety notes
- Serving impact: latency, memory, cost
- Rollback target and monitoring plan

## Acceptance condition

Release owner может принять решение без отдельного поиска evals, serving configs или risk notes.

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
