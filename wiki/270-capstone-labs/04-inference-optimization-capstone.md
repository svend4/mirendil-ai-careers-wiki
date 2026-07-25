# Inference optimization capstone

## Сценарий

Нужно снизить latency/cost serving path без деградации model quality и reliability.

## Участвующие роли

Inference, Kernels, Infrastructure, Model Evaluation, Product Development

## Ожидаемые артефакты

- Benchmark report
- Profiling trace
- Optimization proposal
- Quality regression check
- Rollout plan

## Шаги

- Зафиксировать representative workload и baseline.
- Профилировать memory, throughput, latency и cost.
- Предложить bounded optimization changes.
- Проверить quality и safety regressions.
- Сформировать canary/rollback rollout plan.

## Acceptance gate

Lab принят, если speedup сопровождается correctness/quality evidence и rollback plan.

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
