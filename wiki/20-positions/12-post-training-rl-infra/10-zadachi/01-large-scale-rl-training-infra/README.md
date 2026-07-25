# Задание: Построить инфраструктуру large-scale RL training

## Цель

Дать исследователям надежный контур для больших RL runs.

## Работы

- Описать rollout, learner и evaluator components.
- Настроить scheduling и fault tolerance.
- Синхронизировать данные, policies и checkpoints.

## Артефакты

- RL infra architecture.
- Failure-mode tests.
- Checkpoint policy.

## Критерии готовности

- Есть владелец результата и понятная граница ответственности.
- Результат проверяется через тест, eval, benchmark, review или audit.
- Риски задокументированы до запуска в production или expensive research run.

## Риски

- Stale policies.
- Потеря rollout data.
- Сложная отладка distributed runs.

## Навигация

- [Назад к позиции](../../README.md)
- [Все задачи позиции](../README.md)

