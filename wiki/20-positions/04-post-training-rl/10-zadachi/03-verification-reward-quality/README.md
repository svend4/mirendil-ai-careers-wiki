# Задание: Строить verification pipelines и проверять качество reward

## Цель

Автоматически или полуавтоматически проверять правильность результатов модели.

## Работы

- Определить, какие задачи можно проверить программно.
- Добавить verifiers и negative tests.
- Сравнить reward с human judgment.

## Артефакты

- Verifier suite.
- Reward quality report.
- Набор adversarial examples.

## Критерии готовности

- Есть владелец результата и понятная граница ответственности.
- Результат проверяется через тест, eval, benchmark, review или audit.
- Риски задокументированы до запуска в production или expensive research run.

## Риски

- Хрупкие проверки.
- Модель учит баг verifier.
- Смещение human feedback.

## Навигация

- [Назад к позиции](../../README.md)
- [Все задачи позиции](../README.md)

