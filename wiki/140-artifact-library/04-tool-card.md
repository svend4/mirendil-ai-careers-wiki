# Artifact: Tool card

## Назначение

Описать новый tool для агента до включения в tool registry: полномочия, риски, policy, audit и failure modes.

## Template

| Поле | Содержание |
| --- | --- |
| Tool name | Имя в registry |
| Owner | Команда-владелец |
| Purpose | Зачем tool нужен агенту |
| Inputs | Typed schema |
| Outputs | Typed schema |
| Permissions | Data, filesystem, network, compute |
| Dangerous actions | Что может навредить |
| Policy | Allow, deny, require approval |
| Audit events | Что логировать |
| Failure modes | Timeout, partial write, wrong target |
| Tests | Positive, negative, security regression |

## Quality bar

- Нет tool без owner.
- Inputs и outputs типизированы.
- Dangerous actions перечислены явно.
- Audit содержит actor, action, target, policy decision.

## Связанные материалы

- [Security review checklist](../85-quality-gates/02-security-review-checklist.md)
- [RISK-004: Sandbox escape and unsafe tools](../130-risk-register/RISK-004-sandbox-escape-unsafe-tools.md)
