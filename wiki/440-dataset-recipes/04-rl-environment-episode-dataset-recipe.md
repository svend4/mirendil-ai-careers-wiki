# RL environment episode dataset recipe

## Purpose

Собрать episodes for RL environment validation, reward analysis and verifier hardening.

## Candidate sources

- Generated environment episodes
- Human solved trajectories
- Failed policy rollouts
- Adversarial probes

## Minimum fields

- episode_id
- state_sequence
- actions
- observations
- reward_trace
- success_label
- loophole_label

## Quality checks

- Seeds and environment version recorded
- Invalid actions represented
- Reward and success labels separated
- Variance across runs measured

## Primary use

RL environment benchmark suite, reward design, verifier failure analysis.

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
