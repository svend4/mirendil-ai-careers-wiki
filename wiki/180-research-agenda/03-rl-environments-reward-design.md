# Research agenda: RL environments and reward design

## Главный вопрос

Как строить RL environments для AI R&D задач так, чтобы модель училась реальному решению, а не exploit-ам среды, verifier-а или proxy reward?

## Research questions

- Какие environment abstractions лучше подходят для long-horizon research tasks?
- Как обнаруживать reward hacking до масштабного training run?
- Как использовать sparse и dense rewards без искажения поведения?
- Как делать replay trajectories воспроизводимыми и полезными для debugging?
- Как оценивать sim-to-real gap для domain-specific environments?

## Candidate experiments

- Создать reward hacking challenge suite для sandboxed environments.
- Сравнить rewards на финальном outcome и rewards на промежуточных milestones.
- Измерить влияние deterministic replay на failure analysis speed.
- Проверить, какие environment perturbations ломают learned policy.

## Metrics

- Reward exploit discovery rate.
- Trajectory reproducibility.
- Verifier disagreement rate.
- Long-horizon success rate.
- Environment reset reliability.

## Связанные материалы

- [RL Environments](../20-positions/11-post-training-rl-environments/README.md)
- [RISK-002: Evaluation gaming and Goodhart](../130-risk-register/RISK-002-evaluation-gaming-goodhart.md)
- [Robotics sim-to-real scenario](../95-scenarios/05-robotics-sim-to-real.md)
