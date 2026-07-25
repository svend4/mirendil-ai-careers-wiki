# Contract: Audit event schema

## Назначение

Audit event schema делает действия людей, агентов, tools и services объяснимыми и проверяемыми.

## Required fields

| Поле | Тип | Описание |
| --- | --- | --- |
| event_id | string | Стабильный идентификатор |
| timestamp | timestamp | Время |
| actor_type | enum | user, agent, service, sandbox, system |
| actor_id | string | Кто совершил действие |
| delegated_by | string/null | От имени кого действовал agent/service |
| action | string | Что произошло |
| target_type | string | Dataset, tool, artifact, model, environment |
| target_id | string | Идентификатор объекта |
| policy_decision | enum | allow, deny, require_approval, not_applicable |
| approval_id | string/null | Ссылка на approval |
| result | enum | success, failure, blocked, partial |
| trace_id | string/null | Связанный agent trace |

## Invariants

- Dangerous action без audit event считается policy violation.
- Approval event должен ссылаться на actor и reason.
- Audit log не должен хранить secrets в raw form.
- Data access event должен ссылаться на dataset или artifact metadata.

## Связанные материалы

- [Security and governance metrics](../150-metrics-observability/05-security-governance-metrics.md)
- [Incident and escalation model](../120-operating-model/06-incident-escalation-model.md)
