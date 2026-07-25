# Artifact: Model release record

## Назначение

Зафиксировать решение о promotion, rollback или block для модели, checkpoint, inference optimization или agent harness change.

## Template

| Поле | Содержание |
| --- | --- |
| Release ID | Стабильный идентификатор |
| Owner | Model owner |
| Candidate artifact | Checkpoint, config, recipe, harness version |
| Evidence | Eval reports, benchmarks, trace reviews |
| Decision | Pass, warn, block |
| Known regressions | Что ухудшилось и почему это приемлемо или нет |
| Rollout plan | Canary, staged, internal-only, blocked |
| Rollback path | Как вернуть previous version |
| Reviewers | Evaluation, product, security, compute |

## Quality bar

- Нет release без eval report.
- Rollback path проверяем.
- Known regressions имеют mitigation или block decision.
- Reviewers указаны по зонам риска.

## Связанные материалы

- [RISK-006: Model release regression](../130-risk-register/RISK-006-model-release-regression.md)
- [Production readiness checklist](../85-quality-gates/04-production-readiness-checklist.md)
