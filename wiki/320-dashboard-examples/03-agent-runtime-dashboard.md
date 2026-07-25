# Agent runtime dashboard

## Audience

Agent Harness, Security, Product

## Operational question

Насколько надежно агенты выполняют long-horizon tasks и где autonomy становится unsafe?

## Core widgets

- Task completion by stop reason
- Loop stalls and retries
- Tool denials by policy class
- Approval latency
- Unsafe action proposals

## Expected actions

- Tighten tool policy
- Add behavior eval
- Improve recovery or trace UX

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
