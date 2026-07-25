# Задание: Снимать memory bandwidth bottlenecks

## Цель

Снижать стоимость перемещения данных и улучшать hardware utilization.

## Работы

- Профилировать memory-bound участки.
- Менять layout, fusion и tiling.
- Измерять реальный end-to-end выигрыш.

## Артефакты

- Profiler traces.
- Optimization diff.
- End-to-end throughput report.

## Критерии готовности

- Есть владелец результата и понятная граница ответственности.
- Результат проверяется через тест, eval, benchmark, review или audit.
- Риски задокументированы до запуска в production или expensive research run.

## Риски

- Локальная скорость без системного выигрыша.
- Регрессии на других batch sizes.
- Сложная отладка race conditions.

## Навигация

- [Назад к позиции](../../README.md)
- [Все задачи позиции](../README.md)

