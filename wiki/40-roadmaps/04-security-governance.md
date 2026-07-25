# Roadmap: Security, platform и governance

## Цель

Собрать слой доверия для AI R&D платформы: кто действует, к чему имеет доступ, что можно запускать, что логируется и как защищаются модельные активы.

## Связанные роли

- [Security Engineer](../20-positions/01-security-engineer/README.md)
- [Platform](../20-positions/13-platform/README.md)
- [Infrastructure](../20-positions/10-infrastructure/README.md)
- [Agent Harness](../20-positions/02-agent-harness/README.md)

## Базовые знания

- Threat modeling для agents, tools и sandbox.
- Identity для людей, сервисов, организаций и агентов.
- Secrets management и data access policies.
- Audit logs, compliance, retention, workload isolation.
- Approval gates для опасных действий.

## Практические задания

1. Составить asset inventory: weights, datasets, secrets, customer data, logs.
2. Разделить actor model: user, org, service, agent, evaluator, sandbox.
3. Описать policy для tool calls: allow, deny, require approval.
4. Сделать threat model prompt injection через external tool output.
5. Описать retention matrix для regulated industries.

## Артефакты

- Threat model.
- Permission matrix.
- Audit event schema.
- Sandbox policy.
- Incident response runbook.

## Контрольные вопросы

- Кто отвечает за действие автономного агента?
- Какие данные агент не должен видеть напрямую?
- Как обнаружить exfiltration через tool output?
- Как удалить данные клиента из artifact store?
- Что считается production-impacting action?
