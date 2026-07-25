# Epic 04: Compute platform foundation

## Цель

Построить базовый compute слой для research, eval, RL rollouts и inference workloads с контролем стоимости и надежности.

## Scope

- Workload classes: interactive, batch, long-run, production-serving.
- Scheduling policy: quota, priority, preemption, reservations.
- Checkpointing и recovery requirements.
- Cost attribution по user, org, project, agent.
- Dashboards: utilization, queue time, failure rate, cost per result.

## Out of scope

- Оптимизация custom kernels до MVP.
- Полный autoscaling для всех типов workloads.
- Смешивание production и research без isolation policy.

## Acceptance criteria

- Есть capacity plan по [GPU capacity planning](../70-playbooks/04-gpu-capacity-planning.md).
- Есть SLO profile для inference workloads.
- Runaway jobs имеют kill switch или budget control.
- Checkpoint recovery проверен на тестовом long run.

## Связанные роли

- [Infrastructure](../20-positions/10-infrastructure/README.md)
- [Pretraining](../20-positions/09-pretraining/README.md)
- [Inference](../20-positions/06-inference/README.md)
- [Kernels](../20-positions/08-kernels/README.md)
