# Model release audit

## Scope

Model candidate, eval gate, serving readiness, rollback and release decision

## Checklist

- Eval bundle includes baseline, thresholds and dataset version.
- Blocking regressions are owned or explicitly excepted.
- Serving latency/cost/memory impact is measured.
- Rollback target exists and is tested or reviewable.
- Decision record captures ship/block/exception rationale.

## Required evidence

- Model release evidence packet
- Eval report
- Serving benchmark
- Decision record

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
