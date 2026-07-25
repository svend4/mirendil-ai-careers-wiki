# Evaluation and release controls

## Risk covered

Model или workflow выпускается на основании weak eval, post-hoc thresholds или missing rollback.

## Preventive controls

- Release candidate requires eval bundle and baseline comparison.
- Threshold rationale must exist before release decision.
- Rollback target required for production-facing changes.

## Detective controls

- Eval regression dashboard.
- Flaky eval and verifier disagreement review.
- Release packet completeness check.

## Corrective controls

- Block release or approve bounded exception.
- Repair or retire flaky eval.
- Create failure taxonomy and remediation owner.

## Evidence

- Eval report
- Model release record
- Decision record
- Release gate checklist

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
