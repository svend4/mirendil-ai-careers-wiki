# Задание: Хранить состояние long-running agents

## Цель

Поддержать checkpointing, recovery и resume для задач, которые идут часами или днями.

## Работы

- Определить persistent state model.
- Разделить state, artifacts и logs.
- Проверить recovery на fault injection.

## Артефакты

- State model.
- Recovery tests.
- Retention policy.

## Критерии готовности

- Есть владелец результата и понятная граница ответственности.
- Результат проверяется через тест, eval, benchmark, review или audit.
- Риски задокументированы до запуска в production или expensive research run.

## Риски

- Потеря состояния.
- Невоспроизводимость результата.
- Разрастание storage.

## Навигация

- [Назад к позиции](../../README.md)
- [Все задачи позиции](../README.md)

