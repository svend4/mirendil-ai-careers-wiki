# Production readiness checklist

## Когда применять

- Перед включением user-facing функции.
- Перед запуском multi-tenant platform capability.
- Перед открытием API, tool или workflow внешним пользователям.

## Checklist

- Есть SLO или хотя бы operational target.
- Есть monitoring, alerts и dashboard.
- Есть rate limits, quotas или budget controls.
- Есть rollback или kill switch.
- Ошибки имеют понятные user-facing states.
- Data retention и deletion path описаны.
- Security review пройден.
- Eval или acceptance tests пройдены.
- Документация обновлена.

## Blockers

- Нет observability.
- Нет способа остановить runaway workflow.
- Нет owner для incident response.
- Нет rollback path.
- Пользователь может запустить expensive или dangerous action без контроля.
