# 440-dataset-recipes

Dataset recipes описывают, как готовить данные для evals, training, red-team drills and product research. Они не являются конкретными датасетами; это reusable schema, quality bar and governance checklist.

## Recipes

- [Agent trajectory dataset recipe](01-agent-trajectory-dataset-recipe.md) - Собрать trajectories для training/eval agent behavior без потери trace semantics.
- [Tool-output injection dataset recipe](02-tool-output-injection-dataset-recipe.md) - Собрать untrusted tool outputs для проверки prompt injection resilience.
- [Model release eval dataset recipe](03-model-release-eval-dataset-recipe.md) - Подготовить release-grade eval dataset for candidate-vs-baseline comparison.
- [RL environment episode dataset recipe](04-rl-environment-episode-dataset-recipe.md) - Собрать episodes for RL environment validation, reward analysis and verifier hardening.
- [Inference workload dataset recipe](05-inference-workload-dataset-recipe.md) - Собрать representative workloads for serving latency, memory, cost and quality tests.
- [Product trust research dataset recipe](06-product-trust-research-dataset-recipe.md) - Собрать UX/research examples for trace comprehension, approvals and blocked states.

## Общий стандарт

- Dataset has owner, purpose, source, version and retention note.
- Sensitive data class is recorded before ingestion.
- Labels separate observed outcome, expected behavior and reviewer interpretation.
- Dataset version is linked from eval report or experiment brief.

## Связанные разделы

- [Data governance policy](../230-governance-policies/01-data-governance-policy.md)
- [Dataset card](../140-artifact-library/05-dataset-card.md)
- [Benchmark suite blueprints](../430-benchmark-suite-blueprints/README.md)
- [Source refresh workflow](../410-source-refresh-workflow/README.md)
