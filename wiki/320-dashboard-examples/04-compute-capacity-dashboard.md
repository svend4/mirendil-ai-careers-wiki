# Compute capacity dashboard

## Audience

Infrastructure, RL Infra, Inference, Research leads

## Operational question

Как используется GPU/serving capacity и где wasted compute или queue contention?

## Core widgets

- GPU utilization by queue
- Wait time by priority class
- Cost per accepted result
- Aborted large runs
- Upcoming approved compute requests

## Expected actions

- Adjust quota
- Defer or resize run
- Open scheduling/storage/inference optimization item

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
