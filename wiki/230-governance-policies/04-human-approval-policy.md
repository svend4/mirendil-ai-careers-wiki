# Human approval policy

## Назначение

Human approval нужен не для замедления автономии, а для явного разделения ответственности. Агент может планировать, выполнять и проверять, но некоторые решения должны быть подтверждены человеком до irreversible, expensive или externally visible действия.

## Когда approval обязателен

- Действие меняет production state.
- Действие отправляет данные, сообщения или артефакты внешнему получателю.
- Действие запускает expensive compute сверх установленного лимита.
- Действие использует restricted data.
- Действие продвигает модель, agent workflow или tool в release candidate.
- Действие открывает временное исключение из security или governance policy.

## Формат approval request

Approval request должен содержать:

- цель действия;
- actor и tool;
- scope изменения;
- expected impact;
- rollback или stop plan;
- risks и mitigations;
- ссылку на trace, artifact или decision record.

## Роли approver

| Ситуация | Approver |
| --- | --- |
| Restricted data | data owner + security owner |
| Expensive compute | compute owner или platform lead |
| Model release | eval owner + release owner |
| Production side effect | service owner |
| Policy exception | governance owner |

## Evidence

- [Decision record schema](../200-protocols-contracts/06-decision-record-schema.md)
- [Audit event schema](../200-protocols-contracts/04-audit-event-schema.md)
- [Policy exception process](08-policy-exception-process.md)

## Метрики

- Approval latency по типу действия.
- Доля approval requests с полным rollback plan.
- Количество повторных запросов из-за неполного context.
- Количество emergency approvals и их post-review status.
