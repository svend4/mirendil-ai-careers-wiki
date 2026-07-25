# RISK-003: Data leakage and lineage gaps

## Описание

Данные клиента, eval sets, training data или artifacts используются без достаточного lineage, retention policy или access control. Это делает невозможным audit, deletion и надежное объяснение результата.

## Indicators

- Artifact без source metadata.
- Training run без data version.
- Eval set доступен агентному коду напрямую.
- Customer deletion request нельзя трассировать.
- Agent trace содержит sensitive data без redaction.

## Mitigations

- Stable IDs для datasets и artifacts.
- Policy tags: sensitivity, license, retention.
- Data lineage graph для training, eval и product artifacts.
- Access logs и audit events.
- Redaction для agent traces.

## Owners

- Primary: Security Platform.
- Reviewers: Platform, Evaluation, Product Workspace.

## Связанные gates

- [Data lineage and retention](../70-playbooks/06-data-lineage-and-retention.md)
- [Governance, audit and lineage](../110-implementation-backlog/06-governance-audit-lineage.md)
