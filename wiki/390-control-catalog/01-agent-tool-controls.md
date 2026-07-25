# Agent and tool controls

## Risk covered

Агент выполняет unsafe, unapproved или opaque tool actions.

## Preventive controls

- Tool registry requires owner, policy class and schema.
- High-risk actions require approval state.
- Untrusted tool output is marked before next model step.

## Detective controls

- Trace completeness checks.
- Tool denial and unsafe proposal dashboard.
- Audit events for restricted actions.

## Corrective controls

- Disable or downgrade tool class.
- Add behavior eval and negative test.
- Open incident or policy update.

## Evidence

- Tool card
- Agent trace
- Audit event
- Decision tree outcome

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
