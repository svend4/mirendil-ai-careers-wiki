# RL and evaluation interview kit

## Для каких ролей

- [Post-Training, RL](../20-positions/04-post-training-rl/README.md)
- [Model Evaluation](../20-positions/07-model-evaluation/README.md)
- [RL Environments](../20-positions/11-post-training-rl-environments/README.md)
- [RL Infra](../20-positions/12-post-training-rl-infra/README.md)

## Что проверяем

- Reward design и reward hacking awareness.
- Verifiers и negative tests.
- Baselines, regression detection и gate decisions.
- Long-horizon trajectories.
- Связь eval signal с training decisions.

## Design exercise

Создайте eval suite для coding agent, который должен исправлять ML pipeline bugs. Опишите capability axes, verifiers, leakage risks, baseline и gate decision policy.

## Debugging exercise

Новая модель улучшила benchmark score на 18%, но human reviewers чаще отклоняют ее proposals. Разберите гипотезы, missing evals и release decision.

## Strong signals

- Кандидат не доверяет одному score.
- Разделяет public, private и adversarial evals.
- Проверяет verifiers negative tests.
- Учитывает Goodhart и product workflow outcomes.

## Red flags

- Нет baseline.
- Reward design не включает exploit paths.
- Failures не кластеризуются.
- Gate decision принимается без rollback path.

## Rubric

Используйте [RL and evaluation scorecard](../65-scorecards/02-rl-eval-scorecard.md).
