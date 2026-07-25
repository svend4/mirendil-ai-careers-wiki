# Role to artifact map

| Роль/кластер | Основные artifacts | Где читать |
| --- | --- | --- |
| Agent Harness | Agent trace, tool card, decision record | [Agent trace schema](../200-protocols-contracts/01-agent-trace-schema.md), [Tool card](../140-artifact-library/04-tool-card.md) |
| Model Evaluation | Eval report, model release record | [Eval report](../140-artifact-library/02-eval-report.md), [Eval result schema](../200-protocols-contracts/03-eval-result-schema.md) |
| Post-Training RL | Experiment brief, eval report, decision record | [Experiment brief](../140-artifact-library/01-experiment-brief.md) |
| Infrastructure | Compute request, incident report | [Compute request](../140-artifact-library/08-compute-request.md) |
| Security Engineer | Threat model, incident report, audit event | [Threat model](../140-artifact-library/06-threat-model.md), [Audit event schema](../200-protocols-contracts/04-audit-event-schema.md) |
| Platform | Dataset card, artifact metadata, decision record | [Dataset card](../140-artifact-library/05-dataset-card.md), [Artifact metadata schema](../200-protocols-contracts/05-artifact-metadata-schema.md) |
| Product Development | Decision record, trace review, product metrics | [Decision record schema](../200-protocols-contracts/06-decision-record-schema.md), [Product metrics](../150-metrics-observability/06-product-ux-metrics.md) |

## Правило

Если роль производит output, этот output должен быть artifact с owner, evidence и links.
