# Security audit dashboard

## Audience

Security, Platform, Governance owners

## Operational question

Какие restricted actions, exceptions и audit gaps требуют review?

## Core widgets

- Restricted tool/data access events
- Open policy exceptions
- Audit events missing context
- Blocked high-risk actions
- Incident follow-up age

## Expected actions

- Close or escalate exception
- Update policy enforcement
- Open threat model or incident follow-up

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
