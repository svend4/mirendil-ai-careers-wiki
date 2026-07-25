# Risk to control map

| Risk | Primary controls | Metrics |
| --- | --- | --- |
| [Agent autonomy runaway](../130-risk-register/RISK-001-agent-autonomy-runaway.md) | Stop conditions, budget, approval, trace review | [Agent runtime metrics](../150-metrics-observability/02-agent-runtime-metrics.md) |
| [Evaluation gaming](../130-risk-register/RISK-002-evaluation-gaming-goodhart.md) | Private evals, negative tests, human review | [Evaluation metrics](../150-metrics-observability/03-evaluation-metrics.md) |
| [Data leakage](../130-risk-register/RISK-003-data-leakage-lineage-gaps.md) | Dataset cards, lineage, retention, audit | [Security metrics](../150-metrics-observability/05-security-governance-metrics.md) |
| [Sandbox escape](../130-risk-register/RISK-004-sandbox-escape-unsafe-tools.md) | Network deny, scoped mounts, tool policy | [Security metrics](../150-metrics-observability/05-security-governance-metrics.md) |
| [Compute runaway](../130-risk-register/RISK-005-compute-runaway-cost.md) | Compute request, quotas, cost attribution | [Compute metrics](../150-metrics-observability/04-compute-metrics.md) |
| [Release regression](../130-risk-register/RISK-006-model-release-regression.md) | Eval gate, baseline, rollback | [Evaluation metrics](../150-metrics-observability/03-evaluation-metrics.md) |
| [Product trust failure](../130-risk-register/RISK-007-product-trust-failure.md) | Trace viewer, uncertainty, approval UX | [Product metrics](../150-metrics-observability/06-product-ux-metrics.md) |

## Правило

Каждый active risk должен иметь at least one prevention control, one detection metric и one response playbook.
