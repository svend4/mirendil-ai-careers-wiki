# Adjudication workflow

## Audience

Evaluation leads, dataset owners, governance reviewers

## Goal

Resolve label disagreements without hiding uncertainty or overfitting rubrics.

## Calibration exercises

- Route disagreement by label type.
- Require evidence note for each position.
- Record final label and rationale.
- Update gold set only after review.

## Metrics

- Disagreement volume
- Adjudication latency
- Rubric changes per cycle
- Repeated ambiguity classes

## Output

Adjudication log and updated labeling guideline version.

## Cadence

Run before creating release-grade datasets, after major rubric changes, and after repeated disagreement appears in [operating reports](../380-operating-report-templates/README.md).

## Quality bar

- Reviewers label independently before discussion.
- Disagreement examples are kept as training material.
- Adjudication rationale is written, not only discussed.
- Updated rubric links back to [labeling guidelines](../450-labeling-guidelines/README.md).

## Links

- [Labeling guidelines](../450-labeling-guidelines/README.md)
- [Eval trust decision tree](../330-decision-trees/05-eval-trust-decision-tree.md)
- [Benchmark suite blueprints](../430-benchmark-suite-blueprints/README.md)
- [Audit checklists](../400-audit-checklists/README.md)
