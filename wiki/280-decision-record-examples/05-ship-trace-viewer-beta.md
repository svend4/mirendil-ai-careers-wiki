# Ship trace viewer internal beta

**Status:** Approved for internal beta

## Context

Researchers не могут быстро понять, что сделал агент, особенно при policy blocks и tool failures.

## Decision

Запустить trace viewer beta для internal research workflows с known limitations и feedback capture.

## Alternatives considered

- Ждать полного product workspace
- Оставить raw logs
- Сделать viewer только для engineering team

## Consequences

- Review speed должен вырасти.
- UX может открыть новые terminology gaps.
- Security получает лучший путь расследования agent actions.

## Evidence packet

- Trace viewer prototype
- Usability notes
- Agent trace examples
- Approval UX flow

## Follow-ups

- Измерить time-to-understand trace.
- Добавить comments/review notes.
- Согласовать markers для risky steps.

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
