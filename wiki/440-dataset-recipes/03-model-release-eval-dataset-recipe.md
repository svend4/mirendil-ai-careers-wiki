# Model release eval dataset recipe

## Purpose

Подготовить release-grade eval dataset for candidate-vs-baseline comparison.

## Candidate sources

- Task family examples
- Known regressions
- Adversarial examples
- Product workflow failures

## Minimum fields

- example_id
- task_family
- input
- expected_behavior
- metric
- risk_class
- source_version

## Quality checks

- No post-hoc threshold leakage
- Train/eval split documented
- Known limitations tagged
- Versioned and lineage-tracked

## Primary use

Model release regression suite, failure taxonomy, release gate.

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
