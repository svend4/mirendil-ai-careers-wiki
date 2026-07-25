# Agent trajectory dataset recipe

## Purpose

Собрать trajectories для training/eval agent behavior без потери trace semantics.

## Candidate sources

- Synthetic tasks
- Human-reviewed agent traces
- Tool failure cases
- Policy denial examples

## Minimum fields

- task_id
- plan
- tool_calls
- observations
- stop_reason
- policy_events
- review_label

## Quality checks

- Trace completeness
- No hidden side effects
- Reviewed risky steps
- Balanced success/failure examples

## Primary use

Agent behavior evals, recovery training, trace viewer UX tests.

## Governance checklist

- Owner, purpose and retention are recorded.
- Sensitive data class is explicit.
- Source version and generation recipe are recorded.
- Dataset can be referenced from an eval report or experiment brief.
- Known limitations and excluded cases are documented.

## Links

- [Dataset card](../140-artifact-library/05-dataset-card.md)
- [Data governance policy](../230-governance-policies/01-data-governance-policy.md)
- [Benchmark suite blueprints](../430-benchmark-suite-blueprints/README.md)
- [Audit checklists](../400-audit-checklists/README.md)
