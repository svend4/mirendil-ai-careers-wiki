# Сценарий: Robotics sim-to-real research

## Цель

Использовать AI R&D платформу для итераций между симуляцией, policy learning, evaluation и ограниченным real-world rollout.

## Workflow

1. Команда задает robotics task и safety constraints.
2. RL Environments строит simulation environment и replay pipeline.
3. Agent запускает batches экспериментов и анализирует failures.
4. Evaluation проверяет robustness, edge cases и safety metrics.
5. Compute platform управляет expensive simulations и checkpoints.
6. Human review решает, можно ли переходить к ограниченному real-world test.

## Участвующие роли

- [RL Environments](../20-positions/11-post-training-rl-environments/README.md)
- [Post-Training, RL](../20-positions/04-post-training-rl/README.md)
- [Infrastructure](../20-positions/10-infrastructure/README.md)
- [Model Evaluation](../20-positions/07-model-evaluation/README.md)
- [Security Engineer](../20-positions/01-security-engineer/README.md)

## Артефакты

- Simulation environment spec.
- Safety constraints.
- Robustness eval suite.
- Checkpoint lineage.
- Real-world rollout approval record.

## Основные риски

- Sim-to-real gap.
- Reward hacking в simulation.
- Недостаточные safety margins.
- Expensive uncontrolled rollouts.
- Невоспроизводимые trajectories.

## Quality gates

- [RL and evaluation scorecard](../65-scorecards/02-rl-eval-scorecard.md)
- [Eval readiness checklist](../85-quality-gates/03-eval-readiness-checklist.md)
- [GPU capacity planning](../70-playbooks/04-gpu-capacity-planning.md)
