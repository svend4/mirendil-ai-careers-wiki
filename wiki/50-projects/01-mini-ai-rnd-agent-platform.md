# Проект: Мини-платформа AI R&D агента

## Идея

Собрать минимальную систему, где агент получает research-задачу, планирует шаги, вызывает tools, сохраняет состояние, запускает безопасные эксперименты и возвращает отчет.

## Роли

- Agent Harness
- Infrastructure
- Security Engineer
- Product Development

## Компоненты

- Task intake: цель, ограничения, budget, approval policy.
- Agent loop: plan, act, observe, reflect.
- Tool registry: файловые операции, запуск тестов, evaluation, поиск артефактов.
- State store: план, результаты, logs, checkpoints.
- Trace viewer: читаемый журнал решений.

## Минимальный результат

- Один end-to-end сценарий: “предложить изменение, запустить проверку, объяснить результат”.
- Все действия агента записываются в trace.
- Опасные действия требуют approval gate.

## Расширения

- Multi-agent decomposition.
- Cost budget на tool calls и compute.
- Replay предыдущего запуска.
- Eval regression gate перед принятием результата.
