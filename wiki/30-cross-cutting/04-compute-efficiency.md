# Сквозная тема: compute efficiency

## Почему это сквозная тема

Frontier AI R&D ограничен compute, стоимостью, latency и надежностью. Улучшения в kernels, inference, scheduling и training infrastructure напрямую ускоряют research loop.

## Участвующие роли

- [Pretraining](../20-positions/09-pretraining/README.md)
- [Inference](../20-positions/06-inference/README.md)
- [Kernels](../20-positions/08-kernels/README.md)
- [Infrastructure](../20-positions/10-infrastructure/README.md)

## Ключевые вопросы

- Где bottleneck: data, network, GPU, memory, scheduler, kernel?
- Как измерять cost-per-result, а не только tokens/sec?
- Какие optimizations меняют качество модели?
- Как разделить research и production workloads?
- Как сохранять utilization без потери debuggability?

## Минимальные артефакты

- Cost dashboard.
- Utilization report.
- Benchmark suite.
- Training runbook.
- Inference SLO profile.
