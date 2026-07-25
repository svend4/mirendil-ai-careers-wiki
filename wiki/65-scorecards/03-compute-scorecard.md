# Scorecard: Compute systems

## Связанные роли

- [Pretraining](../20-positions/09-pretraining/README.md)
- [Inference](../20-positions/06-inference/README.md)
- [Kernels](../20-positions/08-kernels/README.md)
- [Infrastructure](../20-positions/10-infrastructure/README.md)

## Что оцениваем

Способность строить и оптимизировать compute foundation: data pipelines, distributed training, GPU scheduling, inference serving, custom kernels и cost visibility.

## Уровни

| Уровень | Поведение |
| --- | --- |
| L1 | Объясняет основные bottlenecks training и inference |
| L2 | Проектирует workload isolation, SLO, checkpointing и cost model |
| L3 | Профилирует workloads, исправляет bottlenecks и измеряет regression |
| L4 | Масштабирует platform на большие GPU clusters и expensive long runs |

## Practical exercise

Спроектировать compute план для команды, которая одновременно запускает RL rollouts, evals и production inference. Нужно учесть priority, quotas, checkpoint recovery, cost и alerts.

## Evidence

- Capacity plan.
- Scheduling policy.
- Utilization report.
- Inference SLO profile.
- Benchmark suite.
- Cost-per-result dashboard.

## Красные флаги

- Оптимизация измеряется только tokens/sec без качества и cost.
- Production и research workloads смешаны без изоляции.
- Нет checkpoint recovery plan.
- Нет owner для runaway jobs.
- Low-precision optimization принимается без eval regression.

## Связанные материалы

- [Roadmap: Compute, pretraining и inference](../40-roadmaps/03-compute-training-inference.md)
- [Playbook: GPU capacity planning](../70-playbooks/04-gpu-capacity-planning.md)
- [Compute efficiency](../30-cross-cutting/04-compute-efficiency.md)
