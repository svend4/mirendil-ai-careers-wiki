# RL reward review calibration

## Audience

Post-Training RL, RL Environments, Model Evaluation

## Goal

Align judgments on success, reward hacking, verifier disagreement and environment loopholes.

## Calibration exercises

- Review paired episodes with reward traces.
- Label high-reward failure examples.
- Identify verifier false positives.
- Adjudicate stochastic outcomes.

## Metrics

- Success-label agreement
- Loophole detection rate
- Verifier disagreement classification
- Variance-sensitive case handling

## Output

Reward review rubric and adversarial episode examples.

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
