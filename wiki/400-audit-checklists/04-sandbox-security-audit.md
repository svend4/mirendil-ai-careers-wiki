# Sandbox security audit

## Scope

Code execution, network egress, filesystem boundaries, secrets and persistence

## Checklist

- Sandbox cannot access host secrets by default.
- Network egress is blocked, proxied or allowlisted.
- Execution writes are scoped and logged.
- Negative tests cover exfiltration, persistence and privilege escalation.
- Incident evidence can reconstruct command sequence.

## Required evidence

- Threat model
- Sandbox red-team drill
- Audit logs
- Incident report

## Finding format

| Field | Required content |
| --- | --- |
| Finding | What failed or is missing |
| Severity | Low, medium, high or critical |
| Evidence | Link to artifact, trace, event, dashboard or missing evidence note |
| Owner | Responsible remediation owner |
| Due date | Reviewable date |
| Destination | Backlog, risk register, decision record or incident |

## Pass criteria

- All checklist items have evidence or accepted exception.
- High severity findings block release or expansion.
- Medium findings have owner and due date.
- Repeated finding links to [anti-patterns/remediations](../300-anti-patterns-remediations/README.md).

## Links

- [Control catalog](../390-control-catalog/README.md)
- [Evidence packets](../290-evidence-packets/README.md)
- [Decision trees](../330-decision-trees/README.md)
- [Risk register](../130-risk-register/README.md)
