# Accept temporary compute exception for RL probe

**Status:** Exception accepted

## Context

RL team просит large run сверх quota для проверки high-confidence reward change до конца sprint.

## Decision

Разрешить 48-hour compute exception с stop condition, owner review и post-run analysis requirement.

## Alternatives considered

- Reject until next planning cycle
- Run small probe only
- Grant unlimited temporary quota

## Consequences

- Команда быстрее получает signal по важной гипотезе.
- Other exploratory jobs могут быть delayed.
- Governance получает пример bounded exception process.

## Evidence packet

- Compute request
- Reward design brief
- Prior small probe result
- Exception request

## Follow-ups

- Опубликовать post-run analysis.
- Закрыть exception в register.
- Обновить capacity planning if signal justifies larger program.

## Review checklist

- Decision можно понять без автора.
- Есть rejected alternatives, а не только выбранный путь.
- Consequences включают downside и operational cost.
- Evidence packet указывает на проверяемые artifacts.
- Follow-ups имеют owner, gate или backlog destination.

## Связанные разделы

- [Decision record schema](../200-protocols-contracts/06-decision-record-schema.md)
- [Governance policies](../230-governance-policies/README.md)
- [Risk register](../130-risk-register/README.md)
- [Implementation backlog](../110-implementation-backlog/README.md)
