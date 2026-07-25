# Agent trace labeling

## Purpose

Размечать agent trajectories для evals, recovery training and trace review.

## Label set

- success, partial, blocked, failed
- stop reason
- tool choice correctness
- policy event correctness
- recovery quality

## Labeling rules

- Label action quality separately from final task outcome.
- Mark untrusted input propagation explicitly.
- Do not infer intent beyond trace evidence.
- Flag missing observations as data quality issue.

## Ambiguity handling

If outcome is unclear, mark needs-adjudication and list missing evidence.

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
