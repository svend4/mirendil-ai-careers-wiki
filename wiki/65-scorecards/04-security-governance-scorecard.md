# Scorecard: Security and governance

## Связанные роли

- [Security Engineer](../20-positions/01-security-engineer/README.md)
- [Platform](../20-positions/13-platform/README.md)
- [Infrastructure](../20-positions/10-infrastructure/README.md)
- [Agent Harness](../20-positions/02-agent-harness/README.md)

## Что оцениваем

Способность строить безопасную AI R&D платформу: sandbox, identity, permissions, audit, lineage, retention, incident response и dangerous action controls.

## Уровни

| Уровень | Поведение |
| --- | --- |
| L1 | Объясняет threat model для agents, tools, data и model weights |
| L2 | Проектирует IAM, audit logs, sandbox policy и approval gates |
| L3 | Реализует controls и negative tests для tool/sandbox workflows |
| L4 | Управляет incident response, compliance, multi-tenant isolation и governance |

## Practical exercise

Разобрать инцидент: агент через внешний tool получил prompt injection и попытался отправить artifact во внешний endpoint. Нужно описать containment, расследование, remediation и regression tests.

## Evidence

- Threat model.
- Permission matrix.
- Audit event schema.
- Incident response record.
- Retention matrix.
- Negative test suite.

## Красные флаги

- Агентный код может видеть secrets.
- Network egress открыт по умолчанию.
- Нет actor attribution для действий агента.
- Audit log не содержит policy decision.
- Customer data нельзя найти или удалить через lineage.

## Связанные материалы

- [Roadmap: Security, platform и governance](../40-roadmaps/04-security-governance.md)
- [Playbook: Agent sandbox incident response](../70-playbooks/03-agent-sandbox-incident-response.md)
- [Security boundaries](../80-reference-architecture/05-security-boundaries.md)
