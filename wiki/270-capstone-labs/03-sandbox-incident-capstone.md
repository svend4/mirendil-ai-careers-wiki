# Sandbox incident capstone

## Сценарий

Агент получил prompt injection через external tool output и предложил dangerous action.

## Участвующие роли

Security Engineer, Agent Harness, Platform, Design Engineer, Infrastructure

## Ожидаемые артефакты

- Incident report
- Threat model update
- Policy diff
- Trace annotation
- Detection rule

## Шаги

- Восстановить timeline по trace и audit events.
- Классифицировать injection source и dangerous action.
- Определить, какой gate должен был сработать.
- Предложить policy, UX и detection изменения.
- Проверить изменения через negative test.

## Acceptance gate

Lab принят, если повторный dangerous action блокируется или переводится в approval state.

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
