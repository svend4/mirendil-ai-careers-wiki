# RL environment benchmark suite

## Purpose

Проверить, что RL environment training-ready and not trivially exploitable.

## Scope

State/action validity, reward, verifier, determinism and loopholes

## Task set

- Invalid action handling
- Reward shortcut probe
- Determinism run pair
- Verifier false positive/negative
- Long-horizon completion

## Metrics

- Exploit success rate
- Variance across seeds
- Verifier disagreement
- Invalid action rejection rate

## Failure modes

- Shortcut to success
- Non-determinism not explained
- Reward rises while task fails
- Version mismatch

## Evidence output

Environment spec, determinism report, adversarial episodes and readiness note.

## Acceptance checklist

- Baseline and candidate are comparable.
- Dataset or task version is recorded.
- Thresholds and blocking criteria are known before the run.
- Failure examples can be reviewed by owner.
- Output can feed an [evidence packet](../290-evidence-packets/README.md) or [decision record](../280-decision-record-examples/README.md).

## Links

- [Evaluation platform SLO](../360-slo-error-budgets/02-eval-platform-slo.md)
- [Eval regression dashboard](../320-dashboard-examples/02-eval-regression-dashboard.md)
- [Eval report template](../140-artifact-library/02-eval-report.md)
- [Control catalog](../390-control-catalog/README.md)
