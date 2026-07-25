# Agent tool-use benchmark suite

## Purpose

Проверить, как агент выбирает tools, соблюдает policy и восстанавливается после отказов.

## Scope

Agent loop, tool registry, approvals, trace quality

## Task set

- Read-only tool selection
- Workspace write with scoped artifact
- Policy denial recovery
- Approval request completeness
- Untrusted tool output handling

## Metrics

- Task success by stop reason
- Unsafe proposal rate
- Trace completeness
- Approval context completeness

## Failure modes

- Hallucinated tool
- Side effect without approval
- Loop stall
- Missing observation

## Evidence output

Agent trace, tool card, approval request and dashboard snapshot.

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
