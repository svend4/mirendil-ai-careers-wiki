# Research agenda: AI R&D compute efficiency

## Главный вопрос

Как измерять и улучшать compute efficiency в AI R&D через value of decision, а не только через utilization, throughput или cost per token?

## Research questions

- Какая метрика лучше отражает research value: cost per run, cost per accepted improvement, cost per verified insight?
- Как scheduling policy влияет на time-to-decision?
- Как agent-driven experiments меняют workload shape?
- Когда low-precision или inference optimization ухудшает reasoning behavior?
- Как прогнозировать GPU demand для eval-heavy и RL-heavy workflows?

## Candidate experiments

- Сравнить scheduling policies на historical workloads.
- Измерить cost per accepted improvement для разных команд.
- Проверить correlation между queue time и research throughput.
- Создать benchmark для inference optimizations с reasoning-sensitive evals.

## Metrics

- Cost per accepted improvement.
- Queue time by priority.
- Checkpoint recovery success.
- Tail latency for agent workloads.
- Idle expensive resources.

## Связанные материалы

- [Compute metrics](../150-metrics-observability/04-compute-metrics.md)
- [RISK-005: Compute runaway cost](../130-risk-register/RISK-005-compute-runaway-cost.md)
- [Compute request](../140-artifact-library/08-compute-request.md)
