# Модуль 03: Evaluation, verifiers и RL feedback

## Цель

Понять, как проверять улучшения модели и агента: eval suite, verifiers, reward quality, regression detection и gate decision.

## Изучить

- [Model Evaluation](../20-positions/07-model-evaluation/README.md)
- [Post-Training, RL](../20-positions/04-post-training-rl/README.md)
- [RL Environments](../20-positions/11-post-training-rl-environments/README.md)
- [Roadmap: Post-training, RL и evaluation](../40-roadmaps/02-rl-evaluation.md)
- [Eval readiness checklist](../85-quality-gates/03-eval-readiness-checklist.md)

## Практика

1. Создать eval catalog для coding agent или domain scenario.
2. Описать 3 verifiers и negative tests для них.
3. Составить reward hacking threat model.
4. Принять gate decision для hypothetical model change.

## Артефакты

- Eval catalog.
- Verifier design.
- Failure taxonomy.
- Gate decision record.

## Проверка

- Есть baseline comparison.
- Eval связан с real workflow.
- Verifier не принимается без negative tests.
- Gate decision имеет evidence, owner и rollback path.
