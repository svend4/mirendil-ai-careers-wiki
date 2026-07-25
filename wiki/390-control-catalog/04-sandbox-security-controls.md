# Sandbox security controls

## Risk covered

Generated code escapes sandbox, exfiltrates data or persists unsafe state.

## Preventive controls

- Scoped filesystem and no secrets by default.
- Network egress allowlist or proxy.
- Execution time, CPU/GPU and persistence limits.

## Detective controls

- Sandbox audit logs.
- Canary token checks.
- Unexpected egress alerts.

## Corrective controls

- Kill run and preserve evidence.
- Rotate exposed secrets if needed.
- Patch sandbox policy and add red-team drill.

## Evidence

- Threat model
- Incident report
- Audit event
- Red-team drill result

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
