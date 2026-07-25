# Reject unscoped AI automation proposal

**Status:** Rejected

## Context

Команда предложила автоматизировать весь ML lifecycle агентом без поэтапных gates и measurable baseline.

## Decision

Отклонить broad automation proposal; разрешить только narrow automation slice с human approval и metrics.

## Alternatives considered

- Approve broad automation pilot
- Block all AI-assisted automation
- Run automation only in offline demo mode

## Consequences

- Снижается риск silent quality degradation.
- Команде придется выбрать first measurable workflow.
- Automation roadmap становится evidence-driven.

## Evidence packet

- ML workflow automation map
- Tool access policy
- Human approval policy
- Product metric definition

## Follow-ups

- Выбрать low-risk automation slice.
- Определить before/after time-to-insight metric.
- Создать rollback/stop criteria для agent workflow.

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
