# Compute metrics

## Цель

Управлять GPU, inference и training resources через value, reliability и cost, а не только utilization.

## Метрики

| Метрика | Интерпретация |
| --- | --- |
| GPU utilization | Используются ли ресурсы |
| Queue time by priority | Справедливость и bottlenecks scheduling |
| Cost per run | Базовая стоимость workload |
| Cost per accepted improvement | Экономическая эффективность research |
| Checkpoint recovery success | Надежность long runs |
| Job failure rate | Platform stability |
| Idle expensive resources | Waste signal |
| Inference tail latency | Product and agent performance |
| Tokens/sec per dollar | Serving efficiency |

## Alerts

- Runaway job over budget.
- High utilization with low accepted improvements.
- Queue time blocks release-critical work.
- Checkpoint recovery fails on long-run class.

## Связанные материалы

- [GPU capacity planning](../70-playbooks/04-gpu-capacity-planning.md)
- [RISK-005: Compute runaway cost](../130-risk-register/RISK-005-compute-runaway-cost.md)
