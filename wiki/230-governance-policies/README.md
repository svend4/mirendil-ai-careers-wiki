# 230-governance-policies

Раздел фиксирует политики управления AI R&D платформой: какие действия разрешены, какие требуют approval, какие должны оставлять audit trail и какие нельзя запускать без отдельного review.

## Политики

- [Data governance policy](01-data-governance-policy.md) - классификация данных, lineage, retention и доступ.
- [Model asset policy](02-model-asset-policy.md) - веса, checkpoints, model cards, release и rollback.
- [Tool access policy](03-tool-access-policy.md) - доступ агентов и людей к tools, внешним API и production actions.
- [Human approval policy](04-human-approval-policy.md) - когда требуется подтверждение человека.
- [Compute budget policy](05-compute-budget-policy.md) - GPU, quotas, expensive runs и capacity fairness.
- [Release governance policy](06-release-governance-policy.md) - gates перед публикацией моделей, агентов и workflow.
- [Research experiment policy](07-research-experiment-policy.md) - правила запуска экспериментов и сохранения evidence.
- [Policy exception process](08-policy-exception-process.md) - как оформлять временное исключение из политики.

## Принципы

- Политика должна быть исполнимой через checks, gates, audit events или ownership, а не только декларацией.
- Любая автономия агента должна иметь границу полномочий, журнал действий и путь остановки.
- Чем дороже или опаснее действие, тем раньше нужен approval gate.
- Исключения допустимы, но должны иметь срок действия, владельца и план закрытия.

## Связанные разделы

- [Risk register](../130-risk-register/README.md)
- [Risk to control map](../210-indexes-maps/02-risk-to-control-map.md)
- [Audit event schema](../200-protocols-contracts/04-audit-event-schema.md)
- [Quality gates](../85-quality-gates/README.md)
- [Operating model](../120-operating-model/README.md)
