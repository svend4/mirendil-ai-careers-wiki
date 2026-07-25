# 460-evaluator-calibration

Evaluator calibration kits помогают нескольким reviewers одинаково понимать labels, thresholds, severity and evidence requirements. Это критично для release-grade evals, incident review, product trust research and RL reward analysis.

## Kits

- [Eval labeler calibration](01-eval-labeler-calibration.md) - Align judgments for correctness, safety, tool-use and failure mode labels.
- [Agent trace review calibration](02-agent-trace-review-calibration.md) - Align reviewers on trace quality, unsafe proposals, recovery and policy events.
- [Security incident calibration](03-security-incident-calibration.md) - Align severity, blast radius, evidence needs and escalation threshold.
- [RL reward review calibration](04-rl-reward-review-calibration.md) - Align judgments on success, reward hacking, verifier disagreement and environment loopholes.
- [Product trust review calibration](05-product-trust-review-calibration.md) - Align judgments on trace comprehension, approval friction and blocked state visibility.
- [Adjudication workflow](06-adjudication-workflow.md) - Resolve label disagreements without hiding uncertainty or overfitting rubrics.

## Общий стандарт

- Calibration uses blind review before group discussion.
- Disagreements are tracked by label type, not treated as noise.
- Gold examples are versioned and refreshed after source/dataset changes.
- Rubric updates must not overfit to one disputed example.

## Связанные разделы

- [Labeling guidelines](../450-labeling-guidelines/README.md)
- [Benchmark suite blueprints](../430-benchmark-suite-blueprints/README.md)
- [Dataset recipes](../440-dataset-recipes/README.md)
- [Model evaluation scorecards](../65-scorecards/README.md)
