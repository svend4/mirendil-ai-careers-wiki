# Data and model asset controls

## Risk covered

Данные, model weights или checkpoints используются без lineage, owner или export control.

## Preventive controls

- Dataset/model asset must have owner and classification.
- Restricted assets require explicit approval for access/export.
- Retention and lineage metadata are required before training or eval use.

## Detective controls

- Restricted access event review.
- Missing lineage report.
- Model export audit sample.

## Corrective controls

- Revoke access or rotate credentials.
- Quarantine asset until lineage is restored.
- Open incident if restricted data may have left boundary.

## Evidence

- Dataset card
- Model release record
- Audit event
- Policy exception record

## Audit questions

- Как reviewer увидит, что control реально включен?
- Какой dashboard, trace, event или artifact подтверждает работу control?
- Кто владеет remediation, если control сработал?
- Какой [decision tree](../330-decision-trees/README.md) помогает принять следующий шаг?

## Links

- [Risk register](../130-risk-register/README.md)
- [SLO/error budgets](../360-slo-error-budgets/README.md)
- [Red-team drills](../370-red-team-drills/README.md)
- [Evidence packets](../290-evidence-packets/README.md)
