# Сквозная тема: governance и auditability

## Почему это сквозная тема

AI R&D платформа должна объяснять, кто сделал действие, почему оно было разрешено, какие данные использовались и как результат можно проверить. Без auditability автономность превращается в операционный риск.

## Участвующие роли

- [Platform](../20-positions/13-platform/README.md)
- [Security Engineer](../20-positions/01-security-engineer/README.md)
- [Product Development](../20-positions/14-product-development/README.md)
- [Model Evaluation](../20-positions/07-model-evaluation/README.md)

## Ключевые вопросы

- Кто является actor: человек, агент, сервис, организация?
- Как связать action, approval, artifact и outcome?
- Какие события обязаны попадать в audit log?
- Как выполнять data retention и deletion?
- Как объяснить пользователю, почему система заблокировала действие?

## Минимальные артефакты

- Actor model.
- Audit log schema.
- Data lineage map.
- Retention matrix.
- Governance policy.
