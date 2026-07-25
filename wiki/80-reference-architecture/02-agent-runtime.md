# Agent runtime

## Назначение

Agent runtime исполняет долгие AI R&D workflow: планирует, вызывает tools, запускает код, сохраняет состояние, восстанавливается после ошибок и предоставляет trace для review.

## Основные блоки

- Planner - формирует план и пересматривает его после наблюдений.
- Executor - вызывает tools и sandbox jobs.
- State manager - хранит задачи, checkpoints, memory и artifacts.
- Policy engine - решает allow, deny, require approval.
- Trace writer - пишет воспроизводимый журнал действий.
- Recovery manager - продолжает работу после failures.

## State model

| Сущность | Описание |
| --- | --- |
| Task | Цель, ограничения, budget, owner |
| Step | Планируемое или выполненное действие |
| Tool call | Имя tool, input, output, статус |
| Artifact | Файл, checkpoint, eval result, report |
| Decision | Обоснованный выбор агента или человека |
| Approval | Разрешение на опасное действие |

## Failure modes

- Tool timeout.
- Sandbox failure.
- Context loss.
- Conflicting agent states.
- Policy denial.
- Partial artifact write.

## Требования

- Каждый run можно остановить.
- Каждый run можно объяснить.
- Каждый critical step можно повторить или откатить.
- State не должен смешиваться между tenants, projects и agents.
