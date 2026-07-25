# Inference serving benchmark suite

## Purpose

Проверить serving changes по latency, memory, throughput, cost and quality.

## Scope

Serving configs, long context, batch inference and rollback readiness

## Task set

- Representative workload latency
- Long-context memory profile
- Batch throughput
- Quality regression smoke test
- Rollback dry run

## Metrics

- p50/p95/p99 latency
- Tokens/sec or tasks/hour
- Memory footprint
- Cost per task
- Quality regression status

## Failure modes

- Synthetic benchmark only
- Quality loss hidden by speedup
- No rollback target
- Long-context memory blowup

## Evidence output

Benchmark report, serving config proposal, quality check and rollback runbook.

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
