# Compute infrastructure SLO

## Service boundary

GPU queues, storage, batch inference, RL rollout and experiment scheduling

## Users

Research, RL Infra, Inference, Model Evaluation

## SLIs

- Queue wait time by priority
- GPU utilization by queue
- Aborted large run rate
- Storage artifact availability
- Cost per accepted result

## SLO targets

- Release/safety critical queues stay under agreed wait time
- Large runs have stop condition and artifact destination
- Artifact storage available for active experiments

## Error budget rule

Spend error budget on exploratory workloads only after release/eval/safety queues are protected.

## Alerts

- Critical queue wait time breach
- Large run without stop condition
- Storage lineage write failure

## Review cadence

Review in the matching [operational review cadence](../310-operational-review-cadences/README.md) and inspect the relevant [dashboard](../320-dashboard-examples/README.md).

## Acceptance checklist

- SLI can be measured from logs, traces, evals, dashboards or artifacts.
- Target is tied to a real workflow, release gate or approval decision.
- Alert has owner and expected action.
- Error budget policy explains what work stops when target is breached.
- Breach follow-up can become [anti-pattern remediation](../300-anti-patterns-remediations/README.md) or [backlog](../110-implementation-backlog/README.md) item.

## Links

- [Dashboard examples](../320-dashboard-examples/README.md)
- [Decision trees](../330-decision-trees/README.md)
- [Evidence packets](../290-evidence-packets/README.md)
- [Quality gates](../85-quality-gates/README.md)
