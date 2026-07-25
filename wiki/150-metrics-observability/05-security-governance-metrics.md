# Security and governance metrics

## Цель

Проверять, что автономные workflow остаются управляемыми: actions имеют actor, policy, audit, lineage и retention.

## Метрики

| Метрика | Интерпретация |
| --- | --- |
| Dangerous actions with approval | Доля risky actions с правильным approval |
| Audit completeness | Actor/action/target/policy/timestamp заполнены |
| Sandbox policy violation rate | Частота нарушений sandbox controls |
| Network egress denied count | Сигнал атак или плохих configs |
| Artifacts with lineage | Можно ли объяснить происхождение результата |
| Dataset cards completeness | Готовность данных к safe use |
| Deletion request success time | Управляемость retention |
| Incidents by severity | Risk trend |

## Alerts

- Dangerous action without approval.
- Artifact without owner or source.
- Secret access attempt from sandbox.
- Data deletion request cannot be traced.

## Связанные материалы

- [Security boundaries](../80-reference-architecture/05-security-boundaries.md)
- [RISK-003: Data leakage and lineage gaps](../130-risk-register/RISK-003-data-leakage-lineage-gaps.md)
