# Product workspace SLO

## Service boundary

Research workspace UI, trace viewer, approvals, artifact navigation and feedback capture

## Users

Researchers, reviewers, approvers, product beta users

## SLIs

- Time-to-understand trace
- Approval decision latency
- Workflow completion rate
- Blocked state visibility
- Feedback severity aging

## SLO targets

- Approval requests include impact, risk, rollback and evidence
- Blocked/risky states visible in primary workflow
- High-severity feedback triaged within product review cadence

## Error budget rule

Do not expand beta if approvers need raw logs to make routine decisions.

## Alerts

- Approval request missing evidence
- Users repeatedly stuck in blocked state
- High severity feedback aging beyond cadence

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
