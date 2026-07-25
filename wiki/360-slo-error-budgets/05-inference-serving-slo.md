# Inference serving SLO

## Service boundary

Model serving, long-context inference, latency, throughput and rollback

## Users

Product workflows, agents, eval runners, researchers

## SLIs

- p95/p99 latency by workload
- Error rate
- Cost per request or task
- Quality regression check pass rate
- Rollback readiness

## SLO targets

- Serving candidate has latency and quality comparison before release
- Rollback target exists for production-facing changes
- User-impacting latency regression detected within alert window

## Error budget rule

Performance optimizations can spend error budget only with quality regression checks and rollback plan.

## Alerts

- Latency regression above threshold
- Error rate spike
- Serving config without rollback target

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
