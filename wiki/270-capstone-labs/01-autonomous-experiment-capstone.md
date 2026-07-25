# Autonomous experiment capstone

## Сценарий

Агент должен пройти путь от research hypothesis до eval report и decision record.

## Участвующие роли

Agent Harness, AI for AI Systems, Model Evaluation, Platform, Product Development

## Ожидаемые артефакты

- Experiment brief
- Agent trace
- Eval report
- Decision record
- Follow-up backlog

## Шаги

- Сформулировать hypothesis и baseline.
- Собрать agent plan и tool boundaries.
- Выполнить controlled run в sandbox/workspace.
- Сохранить trace, artifacts и eval result.
- Принять decision: iterate, block, launch internally или archive.

## Acceptance gate

Lab принят, если reviewer может восстановить весь путь от hypothesis до decision без устных пояснений.

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
