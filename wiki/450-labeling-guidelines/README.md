# 450-labeling-guidelines

Labeling guidelines задают единый язык разметки для agent traces, injection examples, model evals, RL episodes, product trust cases and incidents. Без такого слоя benchmark suites and dataset recipes быстро становятся несравнимыми.

## Guidelines

- [Agent trace labeling](01-agent-trace-labeling.md) - Размечать agent trajectories для evals, recovery training and trace review.
- [Tool-output injection labeling](02-tool-output-injection-labeling.md) - Размечать external/tool outputs for prompt injection and policy-bypass evals.
- [Model eval example labeling](03-model-eval-example-labeling.md) - Размечать model eval examples for release-grade candidate-vs-baseline comparisons.
- [RL episode labeling](04-rl-episode-labeling.md) - Размечать RL environment episodes for reward analysis, verifier hardening and loophole detection.
- [Product trust case labeling](05-product-trust-case-labeling.md) - Размечать UX/product trust cases for trace comprehension, approval friction and blocked state visibility.
- [Incident severity labeling](06-incident-severity-labeling.md) - Размечать incidents and near-misses consistently across security, product, eval and infrastructure.

## Общие правила

- Разделяйте observation, judgment and inference.
- Не смешивайте final outcome with intermediate behavior labels.
- Все labels должны иметь owner, version and ambiguity path.
- Ambiguous examples are useful only if adjudication path is explicit.

## Связанные разделы

- [Dataset recipes](../440-dataset-recipes/README.md)
- [Benchmark suite blueprints](../430-benchmark-suite-blueprints/README.md)
- [Evaluator calibration](../460-evaluator-calibration/README.md)
- [Eval report](../140-artifact-library/02-eval-report.md)
