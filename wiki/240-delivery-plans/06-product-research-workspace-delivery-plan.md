# Product research workspace delivery plan

## Цель

Создать рабочее пространство, где исследователь, engineer и agent видят одну и ту же картину: experiment, trace, artifacts, eval results, approvals, failures и next actions.

## Фаза 1: artifact-first workspace

- Показать experiment brief, status и artifacts.
- Добавить trace viewer для agent steps.
- Поддержать links на eval report, dataset card и tool card.
- Ввести owner и next decision для каждого experiment.

## Фаза 2: collaboration and approvals

- Добавить approval request UI.
- Показать policy reason для blocked action.
- Поддержать comments или review notes на trace steps.
- Сделать comparison view для baseline vs candidate.

## Фаза 3: operational workspace

- Добавить queue views: running, blocked, failed, needs review.
- Подключить dashboard metrics.
- Добавить launch readiness checklist.
- Связать workspace с incident и rollback workflows.

## Acceptance criteria

- Пользователь понимает, что сделал агент и почему.
- Approval decision можно принять без поиска контекста в логах.
- Failed experiment имеет next action, owner и evidence.
- Workspace не скрывает risk state и policy blocks.

## Связанные файлы

- [Product research workspace backlog](../110-implementation-backlog/05-product-research-workspace.md)
- [Artifact library](../140-artifact-library/README.md)
- [Human approval policy](../230-governance-policies/04-human-approval-policy.md)
- [Metrics/observability](../150-metrics-observability/README.md)
