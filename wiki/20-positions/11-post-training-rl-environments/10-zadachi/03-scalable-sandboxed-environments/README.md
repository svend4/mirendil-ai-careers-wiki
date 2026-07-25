# Задание: Строить scalable sandboxed environments

## Цель

Запускать realistic RL tasks с несколькими агентами, узлами и пользователями.

## Работы

- Описать topology среды.
- Добавить reset, snapshot и deterministic replay.
- Масштабировать запуск сред по cluster.

## Артефакты

- Environment runtime design.
- Replay tooling.
- Scale test report.

## Критерии готовности

- Есть владелец результата и понятная граница ответственности.
- Результат проверяется через тест, eval, benchmark, review или audit.
- Риски задокументированы до запуска в production или expensive research run.

## Риски

- Невоспроизводимые среды.
- Слишком дорогой rollout.
- Слабая изоляция между задачами.

## Навигация

- [Назад к позиции](../../README.md)
- [Все задачи позиции](../README.md)

