# Research agenda: Robust evaluation and verifiers

## Главный вопрос

Как строить evals и verifiers, которые измеряют реальную полезность AI R&D системы, а не только умение пройти известный benchmark?

## Research questions

- Как отделить workflow capability от benchmark familiarity?
- Какие verifier designs менее уязвимы к reward hacking?
- Как оценивать failures, где правильность не бинарная?
- Как часто нужно обновлять private evals, чтобы они не становились training target?
- Как измерять confidence eval signal перед release decision?

## Candidate experiments

- Сравнить programmatic verifiers, human review и agent-assisted review на одном failure set.
- Добавить adversarial variants к существующим evals и измерить score drop.
- Проверить, какие eval axes лучше предсказывают user acceptance.
- Измерить false pass и false block rate разных gate policies.

## Metrics

- Regression catch rate.
- False pass rate.
- Verifier negative test pass rate.
- Failure cluster recurrence.
- Product workflow correlation.

## Связанные материалы

- [Evaluation metrics](../150-metrics-observability/03-evaluation-metrics.md)
- [RISK-002: Evaluation gaming and Goodhart](../130-risk-register/RISK-002-evaluation-gaming-goodhart.md)
- [Eval report](../140-artifact-library/02-eval-report.md)
