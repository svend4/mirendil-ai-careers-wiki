# Agent workflow audit

## Scope

Agent loops, tool calls, traces, approvals and recovery states

## Checklist

- Every tool has owner, schema and policy class.
- High-risk tool calls require approval or denial state.
- Trace includes plan, action, observation and stop reason.
- Loop stalls and unsafe proposals are visible in dashboard.
- Recovery path is documented for common failures.

## Required evidence

- Agent trace
- Tool contract
- Approval request
- Agent runtime dashboard

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
