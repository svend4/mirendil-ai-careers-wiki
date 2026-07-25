# Compute and cost audit

## Scope

GPU queues, large runs, batch inference, RL rollout and storage artifacts

## Checklist

- Medium/large runs have owner, purpose and stop condition.
- Queue priority matches release/safety/research policy.
- Aborted or failed runs have post-run analysis.
- Artifacts are stored with lineage and retention metadata.
- Cost per accepted result is reviewed in cadence.

## Required evidence

- Compute request
- Capacity dashboard
- Post-run analysis
- Storage lineage record

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
