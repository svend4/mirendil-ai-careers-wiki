# Inference workload dataset recipe

## Purpose

Собрать representative workloads for serving latency, memory, cost and quality tests.

## Candidate sources

- Product workflow requests
- Agent long-context traces
- Batch eval jobs
- Synthetic stress cases

## Minimum fields

- workload_id
- context_length
- tool_observation_count
- expected_output_type
- latency_class
- quality_check

## Quality checks

- Representative mix documented
- Stress cases separated from normal traffic
- Sensitive data removed
- Stable replay format

## Primary use

Inference serving benchmark suite, capacity planning, rollback drills.

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
