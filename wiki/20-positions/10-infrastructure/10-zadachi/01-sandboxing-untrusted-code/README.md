# Задание: Изолировать untrusted code и агентные исполнения

## Цель

Дать исследовательским агентам среду выполнения без прямого риска для платформы.

## Работы

- Выбрать runtime isolation.
- Ограничить сеть, storage и secrets.
- Интегрировать sandbox с observability.

## Артефакты

- Sandbox runtime design.
- Security test plan.
- Operational dashboard.

## Критерии готовности

- Есть владелец результата и понятная граница ответственности.
- Результат проверяется через тест, eval, benchmark, review или audit.
- Риски задокументированы до запуска в production или expensive research run.

## Риски

- Sandbox escape.
- Скрытый egress.
- Нехватка observability при расследовании.

## Навигация

- [Назад к позиции](../../README.md)
- [Все задачи позиции](../README.md)

