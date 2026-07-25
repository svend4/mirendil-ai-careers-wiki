# Research agenda: Governance for autonomous research systems

## Главный вопрос

Как управлять автономными research systems так, чтобы они оставались auditable, безопасными и пригодными для regulated domains?

## Research questions

- Какой минимальный audit event достаточен для agent action accountability?
- Как проектировать identity для agents, services и delegated actions?
- Как делать retention и deletion для agent traces, где могут быть sensitive fragments?
- Как policies должны отличаться для internal research, customer data и production workflows?
- Какие governance controls можно автоматизировать без снижения safety?

## Candidate experiments

- Сравнить audit schemas по способности восстановить incident timeline.
- Проверить deletion workflow на synthetic lineage graph.
- Измерить approval latency и risk reduction для разных dangerous action policies.
- Протестировать policy engine на prompt-injection tool outputs.

## Metrics

- Audit completeness.
- Dangerous actions with approval.
- Deletion request success time.
- Policy violation detection latency.
- Artifacts with lineage.

## Связанные материалы

- [Security and governance metrics](../150-metrics-observability/05-security-governance-metrics.md)
- [RISK-003: Data leakage and lineage gaps](../130-risk-register/RISK-003-data-leakage-lineage-gaps.md)
- [Threat model](../140-artifact-library/06-threat-model.md)
