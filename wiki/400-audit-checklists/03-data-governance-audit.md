# Data governance audit

## Scope

Datasets, traces, customer data, synthetic data, retention and lineage

## Checklist

- Dataset owner, source, purpose and class are recorded.
- Restricted data access events have approval and audit trail.
- Retention rules are defined and exceptions expire.
- Training/eval usage references dataset version.
- Unknown lineage blocks release-grade claims.

## Required evidence

- Dataset card
- Audit event
- Policy exception
- Data governance policy

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
