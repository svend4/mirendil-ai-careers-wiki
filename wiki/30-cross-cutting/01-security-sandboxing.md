# Сквозная тема: безопасность и sandboxing

## Почему это сквозная тема

AI R&D агент запускает код, читает данные, вызывает tools и может влиять на compute. Поэтому безопасность нельзя оставить одной роли: она должна быть встроена в agent harness, infrastructure, platform и product.

## Участвующие роли

- [Security Engineer](../20-positions/01-security-engineer/README.md)
- [Infrastructure](../20-positions/10-infrastructure/README.md)
- [Platform](../20-positions/13-platform/README.md)
- [Agent Harness](../20-positions/02-agent-harness/README.md)

## Ключевые вопросы

- Какие assets являются критичными: веса, данные, secrets, checkpoints, eval sets?
- Где проходит граница между агентом и sandbox?
- Какие tool calls должны требовать подтверждения?
- Как обнаруживать prompt injection и exfiltration?
- Как воспроизвести dangerous run после инцидента?

## Минимальные артефакты

- Threat model.
- Permission matrix.
- Sandbox policy.
- Audit event schema.
- Incident response runbook.
