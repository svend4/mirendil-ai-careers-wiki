# Model eval example labeling

## Purpose

Размечать model eval examples for release-grade candidate-vs-baseline comparisons.

## Label set

- task family
- expected behavior
- risk class
- metric type
- failure mode
- known limitation

## Labeling rules

- Expected behavior must be written before seeing candidate output.
- Do not tune threshold on the evaluated candidate.
- Separate correctness, safety, style and tool-use judgments.
- Record source and dataset version.

## Ambiguity handling

If expected behavior has multiple valid answers, include acceptance criteria instead of one golden answer.

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
