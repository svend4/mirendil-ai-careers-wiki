# Governance bypass drill

## Target

Проверить, можно ли обойти policy через handoff gaps, ambiguous ownership или manual workflow.

## Setup

- RACI pages and handoff contracts are available.
- Audit logs include policy decision events.
- Exception process is active.

## Attack or pressure scenarios

- Tool is used manually outside registry.
- Exception remains open beyond expiry.
- Decision is made by consulted role instead of accountable owner.

## Expected controls

- Ownership/RACI matrix.
- Policy exception process.
- Security governance review and audit dashboard.

## Exit criteria

Drill passes when bypass attempt becomes visible and creates owner-assigned remediation.

## Evidence to capture

- Trace, logs, audit events or dashboard snapshot.
- Controls that fired and controls that failed.
- Residual risks and open questions.
- Decision record or backlog follow-up.

## Links

- [Decision trees](../330-decision-trees/README.md)
- [Evidence packets](../290-evidence-packets/README.md)
- [Risk register](../130-risk-register/README.md)
- [SLO/error budgets](../360-slo-error-budgets/README.md)
