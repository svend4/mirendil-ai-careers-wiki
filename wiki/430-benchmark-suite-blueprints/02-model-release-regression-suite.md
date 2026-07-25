# Model release regression suite

## Purpose

Проверить candidate model перед internal или product-facing release.

## Scope

Quality, safety, tool-use, cost and known limitations

## Task set

- Candidate vs baseline comparison
- Safety/tool-use regression
- Known limitation probe
- Verifier disagreement check
- Serving cost/latency proxy

## Metrics

- Blocking regression count
- Pass/fail by task family
- Verifier disagreement
- Quality-cost trade-off

## Failure modes

- Benchmark gain hides safety loss
- Threshold selected post-hoc
- Unowned failure cluster
- Missing rollback evidence

## Evidence output

Eval bundle, model release record, failure taxonomy and decision record.

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
