# Product trust benchmark suite

## Purpose

Проверить, помогает ли product workspace принимать decisions faster and safer.

## Scope

Trace viewer, approvals, blocked states, workflow completion and feedback

## Task set

- Trace understanding task
- Approval decision task
- Blocked state recognition
- Evidence navigation task
- Workflow completion with failure state

## Metrics

- Time to understand trace
- Approval decision latency
- Evidence lookup success
- Blocked state recognition rate
- High-severity feedback rate

## Failure modes

- Approver needs raw logs
- UI hides policy block
- Metric rewards unsafe automation
- Known limitation not visible

## Evidence output

Usability notes, product trust dashboard, approval samples and launch memo.

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
