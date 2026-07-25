# Agent trace review calibration

## Audience

Agent Harness, Platform, Security, Product

## Goal

Align reviewers on trace quality, unsafe proposals, recovery and policy events.

## Calibration exercises

- Review same trace without author explanation.
- Classify stop reason and recovery quality.
- Identify missing observations and unsafe tool proposals.
- Compare policy denial interpretations.

## Metrics

- Agreement on stop reason
- Unsafe proposal detection rate
- Trace completeness judgment
- Time-to-understand trace

## Output

Trace review rubric and example annotated traces.

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
