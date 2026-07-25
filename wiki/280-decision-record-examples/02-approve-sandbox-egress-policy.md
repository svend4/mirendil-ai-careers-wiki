# Approve restricted sandbox egress policy

**Status:** Approved

## Context

Agent workflows требуют внешних docs/API, но unrestricted network egress создает exfiltration и prompt injection risk.

## Decision

Разрешить egress только через allowlisted proxy с logging, content classification и policy denial state.

## Alternatives considered

- Отключить всю сеть
- Разрешить unrestricted egress
- Разрешить egress только после manual approval каждого URL

## Consequences

- Research velocity сохраняется для known sources.
- Prompt injection остается residual risk и требует negative tests.
- Security получает audit trail для investigations.

## Evidence packet

- Threat model
- Tool access policy
- Audit event examples
- Sandbox incident capstone

## Follow-ups

- Добавить URL allowlist owner.
- Проверить proxy logs на sensitive data.
- Встроить policy denial UX в trace viewer.

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
