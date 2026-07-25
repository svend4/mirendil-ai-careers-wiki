# Compute and infrastructure controls

## Risk covered

Expensive runs waste GPU budget, block critical work or lose artifacts.

## Preventive controls

- Medium/large runs require compute request.
- Stop condition and artifact destination are mandatory.
- Queue classes protect release, safety and production work.

## Detective controls

- Capacity dashboard.
- Aborted run and wasted compute report.
- Storage lineage write failure alerts.

## Corrective controls

- Resize, defer or stop run.
- Adjust quota and queue policy.
- Open infra reliability follow-up.

## Evidence

- Compute request
- Capacity decision log
- Post-run analysis
- SLO breach report

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
