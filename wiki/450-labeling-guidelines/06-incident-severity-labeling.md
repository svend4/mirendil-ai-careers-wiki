# Incident severity labeling

## Purpose

Размечать incidents and near-misses consistently across security, product, eval and infrastructure.

## Label set

- severity
- blast radius
- data/model asset impact
- user impact
- detectability
- recovery state

## Labeling rules

- Unknown blast radius starts at higher severity until narrowed.
- Restricted data or model weight exposure is never low severity.
- Separate near-miss from confirmed incident.
- Record detection source and time-to-detect.

## Ambiguity handling

If impact is unknown, mark severity provisional and require incident commander review.

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
