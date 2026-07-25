# RL environment capstone

## Сценарий

Нужно создать training-ready RL environment для long-horizon task с проверяемым success signal.

## Участвующие роли

RL Environments, Post-Training RL, RL Infrastructure, Model Evaluation, Security Engineer

## Ожидаемые артефакты

- Environment spec
- Reward design brief
- Determinism report
- Adversarial probes
- Training readiness note

## Шаги

- Описать state, actions, observations и invalid actions.
- Определить reward, verifier и anti-cheating constraints.
- Проверить determinism или acceptable stochasticity.
- Найти loopholes через adversarial probes.
- Сформировать readiness decision.

## Acceptance gate

Lab принят, если environment нельзя trivially exploit и результаты можно интерпретировать.

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
