# Задание: Оптимизировать inference на GPU и accelerators

## Цель

Максимизировать FLOPs utilization, memory bandwidth и cost efficiency.

## Работы

- Профилировать hot paths.
- Настроить batching, scheduling и memory layout.
- Сравнить производительность на разных accelerator profiles.

## Артефакты

- Profiling report.
- Optimization backlog.
- Cost-per-token dashboard.

## Критерии готовности

- Есть владелец результата и понятная граница ответственности.
- Результат проверяется через тест, eval, benchmark, review или audit.
- Риски задокументированы до запуска в production или expensive research run.

## Риски

- Оптимизация под один тип hardware.
- Падение качества при агрессивной экономии.
- Сложность отладки distributed inference.

## Навигация

- [Назад к позиции](../../README.md)
- [Все задачи позиции](../README.md)

