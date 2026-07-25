# Contract: Eval result schema

## Назначение

Eval result schema обеспечивает сравнимость eval runs, regression detection и release gate decisions.

## Required fields

| Поле | Тип | Описание |
| --- | --- | --- |
| eval_run_id | string | Стабильный идентификатор |
| candidate_id | string | Model/checkpoint/harness/config |
| baseline_id | string | Версия для сравнения |
| eval_suite_id | string | Версия eval suite |
| environment_id | string | Prompt/tool/sandbox/compute versions |
| started_at | timestamp | Начало |
| ended_at | timestamp | Конец |
| scores | object | Метрики по capability axes |
| regressions | array | Обнаруженные ухудшения |
| failures | array | Failure cases и clusters |
| recommendation | enum | pass, warn, block |
| evidence_links | array | Trace, artifacts, reports |

## Failure object

| Поле | Тип | Описание |
| --- | --- | --- |
| failure_id | string | Идентификатор |
| axis | string | Capability axis |
| severity | enum | low, medium, high, critical |
| example_ref | string | Ссылка на пример |
| suspected_cause | string/null | Гипотеза |
| owner | string/null | Кто разбирает |

## Invariants

- Eval result без baseline не может открыть release gate.
- Critical regression без owner блокирует promotion.
- Recommendation должна ссылаться на evidence.
- Eval suite version должна быть сохранена.

## Связанные материалы

- [Eval report](../140-artifact-library/02-eval-report.md)
- [Model release eval gate](../70-playbooks/02-model-release-eval-gate.md)
