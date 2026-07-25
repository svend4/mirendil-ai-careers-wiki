# Eval regression dashboard

## Audience

Model Evaluation, Post-Training RL, Release owners

## Operational question

Какие candidates регрессируют, какие evals flaky и какие failures блокируют release?

## Core widgets

- Candidate vs baseline metrics
- Blocking regressions by task family
- Flaky eval rate
- Verifier disagreement
- Failures without owner

## Expected actions

- Block release
- Assign remediation owner
- Retire or repair flaky eval

## Data quality checks

- Widget has owner and refresh cadence.
- Missing metadata is shown explicitly.
- Dashboard links to evidence packet, trace, eval report, incident or backlog item.
- Thresholds are documented and reviewed after incidents or releases.

## Review cadence

Use this dashboard in the relevant review from [operational review cadences](../310-operational-review-cadences/README.md).

## Links

- [Metrics/observability](../150-metrics-observability/README.md)
- [Evidence packets](../290-evidence-packets/README.md)
- [Quality gates](../85-quality-gates/README.md)
- [Decision records](../280-decision-record-examples/README.md)
