# Evaluation stack delivery plan

## Цель

Создать eval stack, который измеряет качество моделей, agents и tools до release, после release и в ходе исследовательских итераций. Система должна поддерживать regression gates, verifiers, reports и сравнение с baseline.

## Фаза 1: eval registry

- Ввести registry для eval suites, owners и versions.
- Описать минимум metadata: task, dataset, metric, model, threshold.
- Сохранять eval result как artifact.
- Поддержать ручной запуск eval suite из experiment workflow.

## Фаза 2: verifiers and regression gates

- Добавить verifiers для задач с проверяемым результатом.
- Разделить quality, safety, tool-use и cost evals.
- Ввести release thresholds и blocking regressions.
- Сравнивать candidate с baseline и previous release.

## Фаза 3: continuous evaluation

- Подключить scheduled evals для production candidates.
- Добавить drift alerts.
- Строить reports для model release review.
- Связать failures с backlog и owner.

## Acceptance criteria

- Release candidate не может пройти без linked eval bundle.
- Eval result имеет model version, dataset version и metric definition.
- Failed eval создает decision point: block, fix, exception или retire eval.
- Human review отделяет metric movement от causal explanation.

## Связанные файлы

- [Eval result schema](../200-protocols-contracts/03-eval-result-schema.md)
- [Eval report](../140-artifact-library/02-eval-report.md)
- [Model release eval gate](../70-playbooks/02-model-release-eval-gate.md)
- [Evaluation platform MVP](../110-implementation-backlog/02-evaluation-platform-mvp.md)
