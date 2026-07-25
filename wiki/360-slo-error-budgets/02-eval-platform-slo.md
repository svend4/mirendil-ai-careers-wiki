# Evaluation platform SLO

## Service boundary

Eval registry, eval execution, result storage and regression gates

## Users

Model Evaluation, release owners, post-training teams

## SLIs

- Eval run success rate
- Eval result freshness
- Flaky eval rate
- Candidate-to-baseline comparison completeness
- Failures with owner mapping

## SLO targets

- Release-blocking evals available before release review
- Flaky critical evals triaged within one review cycle
- Decision-grade evals include baseline, threshold and dataset version

## Error budget rule

Do not spend error budget on new eval suites if release-blocking suites are stale or flaky.

## Alerts

- Critical eval missing baseline
- Verifier disagreement spike
- Release candidate without eval bundle

## Review cadence

Review in the matching [operational review cadence](../310-operational-review-cadences/README.md) and inspect the relevant [dashboard](../320-dashboard-examples/README.md).

## Acceptance checklist

- SLI can be measured from logs, traces, evals, dashboards or artifacts.
- Target is tied to a real workflow, release gate or approval decision.
- Alert has owner and expected action.
- Error budget policy explains what work stops when target is breached.
- Breach follow-up can become [anti-pattern remediation](../300-anti-patterns-remediations/README.md) or [backlog](../110-implementation-backlog/README.md) item.

## Links

- [Dashboard examples](../320-dashboard-examples/README.md)
- [Decision trees](../330-decision-trees/README.md)
- [Evidence packets](../290-evidence-packets/README.md)
- [Quality gates](../85-quality-gates/README.md)
