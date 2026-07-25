# 390-control-catalog

Control catalog описывает практические controls для AI R&D платформы: что предотвращает риск, что обнаруживает проблему и что делать после срабатывания. Этот раздел связывает [governance policies](../230-governance-policies/README.md), [red-team drills](../370-red-team-drills/README.md), [SLO/error budgets](../360-slo-error-budgets/README.md) и [audit checklists](../400-audit-checklists/README.md).

## Controls

- [Agent and tool controls](01-agent-tool-controls.md) - Агент выполняет unsafe, unapproved или opaque tool actions.
- [Data and model asset controls](02-data-model-asset-controls.md) - Данные, model weights или checkpoints используются без lineage, owner или export control.
- [Evaluation and release controls](03-eval-release-controls.md) - Model или workflow выпускается на основании weak eval, post-hoc thresholds или missing rollback.
- [Sandbox security controls](04-sandbox-security-controls.md) - Generated code escapes sandbox, exfiltrates data or persists unsafe state.
- [Compute and infrastructure controls](05-compute-infra-controls.md) - Expensive runs waste GPU budget, block critical work or lose artifacts.
- [Product trust controls](06-product-trust-controls.md) - Product UI hides risk states, approvals lack context or metrics reward unsafe automation.

## Типы controls

- **Preventive** - не дают рискованному действию произойти.
- **Detective** - показывают, что риск уже проявился или близок к проявлению.
- **Corrective** - задают восстановление, remediation и follow-up ownership.

## Связанные разделы

- [Governance policies](../230-governance-policies/README.md)
- [Audit checklists](../400-audit-checklists/README.md)
- [Risk register](../130-risk-register/README.md)
- [Red-team drills](../370-red-team-drills/README.md)
