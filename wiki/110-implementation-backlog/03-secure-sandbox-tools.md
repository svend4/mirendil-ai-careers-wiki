# Epic 03: Secure sandbox and tools

## Цель

Дать агентам безопасную среду выполнения кода и tools без доступа к лишним данным, секретам и сети.

## Scope

- Sandbox runtime с ограничениями CPU, memory, time и filesystem.
- Network deny by default.
- Tool policy: allow, deny, require approval.
- Audit logs для tool calls и sandbox execution.
- Negative tests для sandbox escape и data exfiltration.

## Out of scope

- Полная формальная верификация sandbox.
- Доступ к production systems без отдельного review.
- Persistent environments без retention policy.

## Acceptance criteria

- Security review проходит [чеклист](../85-quality-gates/02-security-review-checklist.md).
- Secrets не доступны AI-generated code напрямую.
- Все network attempts логируются.
- Incident response path описан в [playbook](../70-playbooks/03-agent-sandbox-incident-response.md).

## Связанные роли

- [Security Engineer](../20-positions/01-security-engineer/README.md)
- [Infrastructure](../20-positions/10-infrastructure/README.md)
- [Platform](../20-positions/13-platform/README.md)
