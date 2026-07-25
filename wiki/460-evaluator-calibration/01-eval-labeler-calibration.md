# Eval labeler calibration

## Audience

Model Evaluation, Post-Training RL, research reviewers

## Goal

Align judgments for correctness, safety, tool-use and failure mode labels.

## Calibration exercises

- Blind label same candidate outputs.
- Compare disagreement by task family.
- Adjudicate threshold edge cases.
- Update label guide with examples.

## Metrics

- Inter-rater agreement
- Disagreement by label type
- Adjudication turnaround
- Gold-set drift

## Output

Calibrated label examples and updated rubric notes.

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
