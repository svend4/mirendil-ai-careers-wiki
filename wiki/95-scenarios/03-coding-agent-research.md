# Сценарий: Автономный coding agent research

## Цель

Улучшать coding agent через автоматизированный цикл: найти failure, предложить изменение, запустить evals, проверить regressions и принять candidate model или harness change.

## Workflow

1. Evaluation stack находит regression в coding benchmark или real task trace.
2. Агент анализирует failures и предлагает изменение prompt, tool, reward или data mix.
3. Sandbox запускает patches, tests и evals.
4. RL или post-training stack проверяет candidate recipe.
5. Model release eval gate принимает или блокирует promotion.
6. Product UI показывает trace и decision record.

## Участвующие роли

- [Agent Harness](../20-positions/02-agent-harness/README.md)
- [AI for AI Systems](../20-positions/05-ai-for-ai-systems/README.md)
- [Model Evaluation](../20-positions/07-model-evaluation/README.md)
- [Post-Training, RL Infra](../20-positions/12-post-training-rl-infra/README.md)
- [Security Engineer](../20-positions/01-security-engineer/README.md)

## Артефакты

- Failure cluster report.
- Candidate change proposal.
- Sandbox execution trace.
- Eval comparison.
- Release decision record.

## Основные риски

- Agent learns benchmark-specific shortcuts.
- Tests проходят, но реальный workflow ухудшается.
- Tool permissions слишком широкие.
- Model changes принимаются без trace review.
- Regression gate не покрывает long-horizon coding tasks.

## Quality gates

- [Autonomous experiment loop](../70-playbooks/01-autonomous-experiment-loop.md)
- [Model release eval gate](../70-playbooks/02-model-release-eval-gate.md)
- [Agent systems scorecard](../65-scorecards/01-agent-systems-scorecard.md)
