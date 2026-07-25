# 430-benchmark-suite-blueprints

Benchmark suite blueprint задает, что именно проверять, какие failure modes искать и какой evidence packet остается после запуска. Эти blueprints связывают [model evaluation](../20-positions/07-model-evaluation/README.md), [quality gates](../85-quality-gates/README.md), [SLO/error budgets](../360-slo-error-budgets/README.md) и [decision trees](../330-decision-trees/README.md).

## Blueprints

- [Agent tool-use benchmark suite](01-agent-tool-use-suite.md) - Проверить, как агент выбирает tools, соблюдает policy и восстанавливается после отказов.
- [Model release regression suite](02-model-release-regression-suite.md) - Проверить candidate model перед internal или product-facing release.
- [Sandbox adversarial benchmark suite](03-sandbox-adversarial-suite.md) - Проверить sandbox execution against exfiltration, persistence and privilege escalation attempts.
- [RL environment benchmark suite](04-rl-environment-suite.md) - Проверить, что RL environment training-ready and not trivially exploitable.
- [Inference serving benchmark suite](05-inference-serving-suite.md) - Проверить serving changes по latency, memory, throughput, cost and quality.
- [Product trust benchmark suite](06-product-trust-suite.md) - Проверить, помогает ли product workspace принимать decisions faster and safer.

## Общий стандарт

- Suite должен иметь owner, scope, baseline и decision use.
- Thresholds фиксируются до review, а не после результата.
- Failure modes документируются как taxonomy, а не как loose examples.
- Result должен вести к decision: ship, block, iterate, repair eval, update dataset или open incident.

## Связанные разделы

- [Evaluation stack delivery plan](../240-delivery-plans/03-evaluation-stack-delivery-plan.md)
- [Eval trust decision tree](../330-decision-trees/05-eval-trust-decision-tree.md)
- [Evidence packets](../290-evidence-packets/README.md)
- [Audit checklists](../400-audit-checklists/README.md)
