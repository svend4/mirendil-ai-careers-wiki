# RL episode labeling

## Purpose

Размечать RL environment episodes for reward analysis, verifier hardening and loophole detection.

## Label set

- success label
- reward trace anomaly
- invalid action
- loophole indicator
- verifier agreement
- episode quality

## Labeling rules

- Do not equate high reward with success.
- Label invalid actions even if final reward is high.
- Record environment version and seed.
- Separate human success label from reward model output.

## Ambiguity handling

If stochasticity affects interpretation, mark variance-sensitive and require paired rerun.

## Quality checks

- Labeler can cite trace, input, output, metric or artifact evidence.
- Label does not assume hidden model intent.
- Ambiguous examples are not forced into clean labels.
- Label distribution is reviewed for imbalance and missing negative cases.
- Labels can feed a [benchmark suite](../430-benchmark-suite-blueprints/README.md) or [dataset recipe](../440-dataset-recipes/README.md).

## Links

- [Dataset recipes](../440-dataset-recipes/README.md)
- [Benchmark suite blueprints](../430-benchmark-suite-blueprints/README.md)
- [Audit checklists](../400-audit-checklists/README.md)
- [Evaluator calibration](../460-evaluator-calibration/README.md)
