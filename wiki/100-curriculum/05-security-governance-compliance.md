# Модуль 05: Security, governance и compliance

## Цель

Научиться проектировать доверенный контур AI R&D платформы: identity, sandbox, audit, retention, data lineage и incident response.

## Изучить

- [Security Engineer](../20-positions/01-security-engineer/README.md)
- [Platform](../20-positions/13-platform/README.md)
- [Security boundaries](../80-reference-architecture/05-security-boundaries.md)
- [Agent sandbox incident response](../70-playbooks/03-agent-sandbox-incident-response.md)
- [Scorecard: Security and governance](../65-scorecards/04-security-governance-scorecard.md)

## Практика

1. Составить actor model: user, org, service, agent, sandbox, evaluator.
2. Описать permission matrix для tools и data access.
3. Спроектировать audit event schema.
4. Разобрать prompt injection incident по playbook.

## Артефакты

- Threat model.
- Permission matrix.
- Audit schema.
- Incident response note.
- Retention matrix.

## Проверка

- Network egress deny by default.
- Secrets недоступны AI-generated code напрямую.
- Dangerous actions имеют actor, reason, policy decision и audit event.
