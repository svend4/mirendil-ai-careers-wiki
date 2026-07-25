# Playbook: Model release eval gate

## Назначение

Не выпускать модель, checkpoint или training recipe без понятной проверки качества, регрессий и safety-sensitive behavior.

## Когда применять

- Новый checkpoint претендует на promotion.
- Изменился reward recipe, data mix, model architecture или inference optimization.
- Агент предлагает принять результат как улучшение.

## Участники

- Model owner.
- Evaluation owner.
- Post-training owner.
- Product owner для user-facing сценариев.
- Security/safety reviewer для sensitive capabilities.

## Шаги

1. Зафиксировать candidate artifact: модель, checkpoint, recipe, config.
2. Выбрать eval suite: core, regression, adversarial, product-specific.
3. Проверить contamination и leakage для eval data.
4. Запустить evals с сохранением версий prompts, tools и environment.
5. Сравнить с baseline: capability, reliability, latency, cost, safety.
6. Разобрать failures вручную или через assisted review.
7. Принять gate decision: pass, warn, block.
8. Записать decision record с owner и rollback path.

## Gate policy

| Решение | Условие | Действие |
| --- | --- | --- |
| Pass | Улучшения есть, критических регрессий нет | Разрешить promotion |
| Warn | Есть локальные регрессии с понятным impact | Разрешить только с mitigation |
| Block | Есть критическая регрессия, leakage или unexplained failure | Запретить promotion |

## Артефакты

- Eval run ID.
- Baseline comparison.
- Failure analysis.
- Release decision record.
- Rollback plan.

## Связанные страницы

- [Evaluation и verifiers](../30-cross-cutting/02-evaluation-verifiers.md)
- [Eval readiness checklist](../85-quality-gates/03-eval-readiness-checklist.md)
