# Platform MVP delivery plan

## Цель

Собрать минимальный end-to-end контур AI R&D: пользователь формулирует исследовательскую задачу, агент планирует и выполняет шаги в sandbox, результат оценивается eval stack, artifacts сохраняются, а governance события попадают в audit trail.

## Фаза 1: thin slice

- Создать единый объект `experiment`.
- Подключить один read-only tool и один workspace-write tool.
- Запустить простой agent trace с планом, действиями и результатом.
- Сохранить experiment brief и eval report.
- Показать результат в минимальном workspace UI или Markdown artifact.

## Фаза 2: controlled autonomy

- Добавить tool policy classes.
- Ввести human approval для side-effect actions.
- Подключить sandbox execution с ограничением сети и файловой системы.
- Добавить regression eval gate для одной model/task категории.
- Ввести dashboard для run status, failures и cost.

## Фаза 3: operational readiness

- Добавить rollback/stop workflow.
- Ввести audit events для approvals, tool calls и artifact exports.
- Подключить compute quotas.
- Описать release packet для первого internal release.
- Провести tabletop incident review.

## Milestone acceptance

| Milestone | Acceptance |
| --- | --- |
| MVP trace | trace воспроизводит plan-action-observation-result |
| MVP eval | eval result связан с experiment и model version |
| MVP governance | dangerous action требует approval |
| MVP operations | failed run имеет owner и recovery path |

## Связанные файлы

- [Agent runtime MVP](../110-implementation-backlog/01-agent-runtime-mvp.md)
- [Evaluation platform MVP](../110-implementation-backlog/02-evaluation-platform-mvp.md)
- [Governance audit lineage](../110-implementation-backlog/06-governance-audit-lineage.md)
- [Release governance policy](../230-governance-policies/06-release-governance-policy.md)
