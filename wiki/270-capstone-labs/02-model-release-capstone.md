# Model release capstone

## Сценарий

Команда готовит model candidate к internal release и должна пройти eval, risk и rollback gates.

## Участвующие роли

Post-Training RL, Model Evaluation, Inference, Security Engineer, Product Development

## Ожидаемые артефакты

- Model release record
- Eval bundle
- Known limitations
- Rollback plan
- Release decision

## Шаги

- Определить candidate, baseline и release scope.
- Собрать regression evals и verifier notes.
- Проверить serving impact: latency, cost, memory.
- Описать security/product risks и limitations.
- Сформировать ship/block/exception recommendation.

## Acceptance gate

Lab принят, если release decision можно принять по evidence packet, а rollback target существует.

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
