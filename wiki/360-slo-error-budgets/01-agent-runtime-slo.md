# Agent runtime SLO

## Service boundary

Agent loop, tool execution, trace capture and recovery

## Users

Researchers, platform owners, product beta users

## SLIs

- Task completion by stop reason
- Tool call success rate
- Trace completeness
- Policy denial recovery rate
- Loop stall rate

## SLO targets

- Trace completeness: 99 percent for completed tasks
- Unclassified tool actions: 0 for high-risk tools
- Loop stalls above threshold investigated within one review cycle

## Error budget rule

Spend error budget on new autonomy only when trace completeness and recovery rate remain within target.

## Alerts

- Spike in unsafe action proposals
- Trace missing tool input/output summary
- Loop stalls exceed threshold

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
