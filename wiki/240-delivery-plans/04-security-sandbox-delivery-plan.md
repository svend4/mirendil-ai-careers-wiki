# Security sandbox delivery plan

## Цель

Построить безопасную среду выполнения AI-generated code и agent actions. Sandbox должен ограничивать файловую систему, сеть, секреты, ресурсы и persistence, но при этом оставаться удобным для исследовательских workflow.

## Фаза 1: isolated execution

- Запускать код в отдельной среде с scoped workspace.
- Отключить доступ к секретам по умолчанию.
- Ограничить network egress.
- Логировать команду, duration, exit code и artifact writes.

## Фаза 2: policy and observability

- Классифицировать tools по risk class.
- Добавить allowlist/denylist для network destinations.
- Ввести audit events для restricted actions.
- Создать incident runbook для sandbox escape suspicion.

## Фаза 3: adversarial validation

- Добавить negative tests для exfiltration, persistence и privilege escalation.
- Проверять prompt injection через tool output.
- Проводить tabletop drills.
- Связать sandbox alerts с incident workflow.

## Acceptance criteria

- Agent code не видит host secrets.
- Network access явно ограничен и журналируется.
- Artifact export проходит policy decision.
- Security reviewer может восстановить sequence of actions по trace.

## Связанные файлы

- [Secure sandbox tools backlog](../110-implementation-backlog/03-secure-sandbox-tools.md)
- [Sandbox incident response](../70-playbooks/03-agent-sandbox-incident-response.md)
- [Threat model](../140-artifact-library/06-threat-model.md)
- [Audit event schema](../200-protocols-contracts/04-audit-event-schema.md)
