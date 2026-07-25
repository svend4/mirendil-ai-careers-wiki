# Epic 06: Governance, audit and lineage

## Цель

Сделать каждое действие, artifact, dataset, checkpoint и decision объяснимым, проверяемым и управляемым через policies.

## Scope

- Actor model: user, org, service, agent, sandbox, evaluator.
- Audit event schema.
- Data и artifact lineage graph.
- Retention matrix.
- Deletion request workflow.
- Model weight access policy.

## Out of scope

- Полная enterprise compliance сертификация на MVP.
- Автоматическая классификация всех данных без human review.
- Неограниченный экспорт audit logs без privacy policy.

## Acceptance criteria

- Любой artifact имеет owner, source и policy tags.
- Customer data deletion можно трассировать через lineage graph.
- Dangerous actions имеют actor, reason, policy decision и timestamp.
- Governance проходит [quality gate](../85-quality-gates/02-security-review-checklist.md).

## Связанные роли

- [Platform](../20-positions/13-platform/README.md)
- [Security Engineer](../20-positions/01-security-engineer/README.md)
- [Product Development](../20-positions/14-product-development/README.md)
