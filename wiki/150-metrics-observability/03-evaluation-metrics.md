# Evaluation metrics

## Цель

Понять, насколько evaluation stack реально защищает модель и продукт от regressions, Goodhart и неподтвержденных improvements.

## Метрики

| Метрика | Интерпретация |
| --- | --- |
| Eval coverage by capability axis | Где есть blind spots |
| Regression catch rate | Сколько regressions найдено до release |
| False pass rate | Сколько issues прошло gate |
| False block rate | Сколько полезных changes заблокировано |
| Verifier negative test pass rate | Устойчивость verifiers |
| Failure cluster recurrence | Повторяются ли старые проблемы |
| Baseline freshness | Насколько актуально сравнение |
| Eval runtime and cost | Цена quality signal |

## Alerts

- Candidate improves only one benchmark but fails workflow eval.
- Verifier negative tests fail.
- Baseline older than allowed window.
- Critical regression lacks owner.

## Связанные материалы

- [Evaluation и verifiers](../30-cross-cutting/02-evaluation-verifiers.md)
- [RISK-002: Evaluation gaming and Goodhart](../130-risk-register/RISK-002-evaluation-gaming-goodhart.md)
