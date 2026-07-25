# Artifact: Eval report

## Назначение

Сохранить результаты eval так, чтобы их можно было использовать для gate decision, failure analysis и последующих сравнений.

## Template

| Поле | Содержание |
| --- | --- |
| Eval run ID | Стабильный идентификатор |
| Candidate | Model, checkpoint, recipe или harness change |
| Baseline | Версия для сравнения |
| Eval suite version | Набор evals и verifiers |
| Environment | Tool versions, prompts, sandbox, compute |
| Summary | Краткий итог |
| Pass/fail table | По capability axes |
| Regressions | Что ухудшилось |
| Failure clusters | Основные типы ошибок |
| Recommendation | Pass, warn, block |

## Quality bar

- Есть baseline comparison.
- Указаны версии eval suite и environment.
- Failures не скрыты за средним score.
- Рекомендация связана с evidence.

## Связанные материалы

- [Model release eval gate](../70-playbooks/02-model-release-eval-gate.md)
- [Eval readiness checklist](../85-quality-gates/03-eval-readiness-checklist.md)
