# Eval gaming drill

## Target

Найти, может ли model/reward workflow optimize benchmark without solving real task.

## Setup

- Eval suite has baseline and candidate.
- Verifier disagreement can be inspected.
- Failure examples are reviewable.

## Attack or pressure scenarios

- Candidate improves single benchmark while failing broader task family.
- Reward model overfits known verifier pattern.
- Threshold is adjusted after seeing result.

## Expected controls

- Eval trust decision tree blocks post-hoc thresholds.
- Failure taxonomy maps regressions to owners.
- Release gate requires eval bundle and limitations.

## Exit criteria

Drill passes when gaming signal is classified and cannot be used as release-grade evidence.

## Evidence to capture

- Trace, logs, audit events or dashboard snapshot.
- Controls that fired and controls that failed.
- Residual risks and open questions.
- Decision record or backlog follow-up.

## Links

- [Decision trees](../330-decision-trees/README.md)
- [Evidence packets](../290-evidence-packets/README.md)
- [Risk register](../130-risk-register/README.md)
- [SLO/error budgets](../360-slo-error-budgets/README.md)
