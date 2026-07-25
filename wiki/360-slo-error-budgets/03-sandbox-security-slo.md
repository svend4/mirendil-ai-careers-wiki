# Sandbox security SLO

## Service boundary

Sandbox execution, egress control, audit logging and security policy enforcement

## Users

Agent Harness, Security, Platform, researchers

## SLIs

- Restricted action audit coverage
- Blocked high-risk action rate
- Sandbox execution isolation failures
- Network egress policy violations
- Incident follow-up age

## SLO targets

- Restricted actions audited: 100 percent
- Known high-risk action without policy class: 0
- Security incident follow-up reviewed within cadence

## Error budget rule

No error budget for unaudited restricted actions; treat as incident or policy breach.

## Alerts

- Unaudited restricted action
- Unexpected network egress
- Sandbox process sees forbidden secret or path

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
