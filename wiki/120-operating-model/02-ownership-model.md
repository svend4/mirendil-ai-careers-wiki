# Ownership model

## Цель

Назначить владельцев на артефакты и решения так, чтобы ответственность была видна до запуска работы, а не после сбоя.

## Ownership table

| Объект | Primary owner | Required reviewers |
| --- | --- | --- |
| Agent tool | Agent Runtime | Security Platform, Product Workspace |
| Sandbox capability | Security Platform | Infrastructure, Agent Runtime |
| Training recipe | Model Training | Evaluation, Compute Platform |
| Eval suite | Evaluation | Model Training, Product Workspace |
| Model checkpoint | Model Training | Evaluation, Security Platform |
| Product workflow | Product Workspace | Agent Runtime, Evaluation, Security Platform |
| Data retention policy | Security Platform | Platform, Product Workspace |

## Правила

- Owner отвечает за актуальность документации, metrics и rollback path.
- Reviewer отвечает за конкретный риск, а не за общее одобрение.
- Любой artifact должен иметь owner в metadata или decision record.
- Ownership меняется только через decision record.

## Escalation

Если owner и reviewer не согласны, решение переносится в design review. Если есть safety, security, customer data или production risk, default decision - block до уточнения evidence.

## Связанные материалы

- [Design review checklist](../85-quality-gates/01-design-review-checklist.md)
- [Governance, audit and lineage](../110-implementation-backlog/06-governance-audit-lineage.md)
