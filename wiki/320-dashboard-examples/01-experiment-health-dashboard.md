# Experiment health dashboard

## Audience

Research leads, AI for AI Systems, Platform

## Operational question

Какие experiments дают useful signal, где stuck/failed runs и какие decisions overdue?

## Core widgets

- Active experiments by state
- Time from result to decision
- Failed runs by failure class
- Experiments without baseline
- Open follow-ups by owner

## Expected actions

- Stop low-signal experiment
- Request missing evidence packet
- Open debugging or platform backlog item

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
