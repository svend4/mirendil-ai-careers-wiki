# Roadmap: Agentic AI R&D

## Цель

Научиться проектировать агентную систему, которая умеет планировать AI R&D задачи, вызывать tools, запускать эксперименты, сохранять состояние и объяснять свои решения.

## Связанные роли

- [Agent Harness](../20-positions/02-agent-harness/README.md)
- [AI for AI Systems](../20-positions/05-ai-for-ai-systems/README.md)
- [Infrastructure](../20-positions/10-infrastructure/README.md)
- [Product Development](../20-positions/14-product-development/README.md)
- [Security Engineer](../20-positions/01-security-engineer/README.md)

## Базовые знания

- Agent loop: plan, act, observe, reflect, stop.
- Tool calling и контракты внешних инструментов.
- Память: short-term context, long-term memory, artifact store.
- Checkpointing и resume для долгих задач.
- Guardrails, approval gates и audit logs.

## Практические задания

1. Описать agent loop для задачи “найти и проверить улучшение eval”.
2. Спроектировать tool registry с правами доступа и схемами ошибок.
3. Добавить журнал действий агента: план, tool call, результат, решение.
4. Описать recovery после падения sandbox или кластера.
5. Разделить действия на автоматические и требующие подтверждения человека.

## Артефакты

- Диаграмма agent loop.
- Tool API contract.
- State model для long-running tasks.
- Failure taxonomy.
- Политика human approval.

## Контрольные вопросы

- Как понять, что агент должен остановиться?
- Какие действия нельзя доверять модели без подтверждения?
- Где хранится состояние между итерациями?
- Как отличить ошибку tool от ошибки reasoning?
- Как сделать replay выполнения понятным для исследователя?
