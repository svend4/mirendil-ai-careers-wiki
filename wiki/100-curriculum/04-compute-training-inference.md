# Модуль 04: Compute, training и inference

## Цель

Освоить compute foundation AI R&D платформы: distributed training, GPU scheduling, inference serving, kernels, cost и observability.

## Изучить

- [Pretraining](../20-positions/09-pretraining/README.md)
- [Infrastructure](../20-positions/10-infrastructure/README.md)
- [Inference](../20-positions/06-inference/README.md)
- [Kernels](../20-positions/08-kernels/README.md)
- [GPU capacity planning](../70-playbooks/04-gpu-capacity-planning.md)
- [Scorecard: Compute systems](../65-scorecards/03-compute-scorecard.md)

## Практика

1. Разделить workloads на interactive, batch, long-run и production-serving.
2. Описать scheduling policy с priority, quota и preemption.
3. Составить inference SLO profile.
4. Сделать cost-per-result metric tree.

## Артефакты

- Capacity plan.
- Scheduling policy.
- Inference SLO.
- Cost dashboard spec.

## Проверка

- Compute plan учитывает recovery и checkpointing.
- Optimizations не принимаются без eval regression check.
- Production и research workloads имеют границы изоляции.
