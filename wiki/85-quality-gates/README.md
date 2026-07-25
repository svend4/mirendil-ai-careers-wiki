# 85-quality-gates

Quality gates - это чеклисты перед принятием архитектурного решения, запуском опасного workflow или выпуском модели/продукта.

## Чеклисты

- [Design review checklist](01-design-review-checklist.md)
- [Security review checklist](02-security-review-checklist.md)
- [Eval readiness checklist](03-eval-readiness-checklist.md)
- [Production readiness checklist](04-production-readiness-checklist.md)

## Правило

Если работа затрагивает model behavior, customer data, model weights, external tools, production surface или expensive compute, она должна пройти хотя бы один quality gate.
