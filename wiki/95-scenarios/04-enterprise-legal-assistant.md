# Сценарий: Enterprise legal assistant research

## Цель

Создать специализированную модель и продуктовый workflow для анализа юридических документов в enterprise-среде с жесткими требованиями к confidentiality, audit и reliability.

## Workflow

1. Organization admin задает data access, retention и user roles.
2. Platform layer изолирует tenant data и agent permissions.
3. Model team дообучает или адаптирует модель на разрешенных данных.
4. Evaluation проверяет citations, refusal behavior, hallucination и policy compliance.
5. Product UI показывает answer, evidence, uncertainty и audit trail.
6. Governance layer хранит lineage и deletion path.

## Участвующие роли

- [Platform](../20-positions/13-platform/README.md)
- [Security Engineer](../20-positions/01-security-engineer/README.md)
- [Model Evaluation](../20-positions/07-model-evaluation/README.md)
- [Design Engineer](../20-positions/03-design-engineer/README.md)
- [Product Development](../20-positions/14-product-development/README.md)

## Артефакты

- Tenant isolation design.
- Permission matrix.
- Legal eval suite.
- Citation quality rubric.
- Audit event schema.

## Основные риски

- Cross-tenant data leakage.
- Hallucinated legal claims.
- Неполная citation/evidence trail.
- Невыполнимый deletion request.
- Пользователь не понимает uncertainty.

## Quality gates

- [Security and governance scorecard](../65-scorecards/04-security-governance-scorecard.md)
- [Production readiness checklist](../85-quality-gates/04-production-readiness-checklist.md)
- [Data lineage and retention](../70-playbooks/06-data-lineage-and-retention.md)
