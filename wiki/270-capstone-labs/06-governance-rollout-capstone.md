# Governance rollout capstone

## Сценарий

Команда внедряет политики data, tools, approvals и compute без остановки research velocity.

## Участвующие роли

Platform, Security Engineer, Infrastructure, Product Development, Operating Model owners

## Ожидаемые артефакты

- Policy baseline
- Approval flow
- Audit event examples
- Exception register
- Governance health metrics

## Шаги

- Назначить owners для data, tools, model release и compute.
- Выбрать blocking и advisory gates.
- Встроить policy check в tool/workflow.
- Описать exception lifecycle.
- Измерить approval latency, denials и open exceptions.

## Acceptance gate

Lab принят, если governance имеет enforcement path и не живет отдельным документом.

## Review questions

- Достаточно ли evidence, чтобы принять решение без автора lab?
- Какие assumptions остались непроверенными?
- Какие risks должны попасть в [risk register](../130-risk-register/README.md)?
- Какие follow-ups должны попасть в [implementation backlog](../110-implementation-backlog/README.md)?
- Какой [decision record](../200-protocols-contracts/06-decision-record-schema.md) фиксирует итог?

## Связанные разделы

- [Practical assignments](../250-role-practical-assignments/README.md)
- [Delivery plans](../240-delivery-plans/README.md)
- [Quality gates](../85-quality-gates/README.md)
- [Artifact library](../140-artifact-library/README.md)
