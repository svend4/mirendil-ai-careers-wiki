# Launch and change management

## Цель

Управлять изменениями так, чтобы новые capabilities не попадали в production или research-critical workflows без readiness, monitoring и rollback.

## Change classes

| Class | Пример | Required gates |
| --- | --- | --- |
| C1 Documentation | Новая wiki-страница | Link check |
| C2 Internal tool | Новый eval helper | Design review |
| C3 Agent capability | Новый tool call или memory behavior | Security review, eval readiness |
| C4 Model change | Новый checkpoint или reward recipe | Eval gate, rollback plan |
| C5 Production surface | User-facing workflow | Production readiness, security review |

## Launch steps

1. Определить change class.
2. Назначить owner и reviewers.
3. Заполнить decision record.
4. Пройти required quality gates.
5. Запустить staged rollout.
6. Следить за metrics и alerts.
7. Закрыть launch review или выполнить rollback.

## Stop conditions

- Нет owner или rollback path.
- Eval regression не объяснена.
- Security boundary изменена без review.
- Observability не покрывает failure modes.
- Customer-impacting behavior не имеет support path.

## Связанные материалы

- [Production readiness checklist](../85-quality-gates/04-production-readiness-checklist.md)
- [Security review checklist](../85-quality-gates/02-security-review-checklist.md)
