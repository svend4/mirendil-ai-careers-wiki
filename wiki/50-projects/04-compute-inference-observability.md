# Проект: Compute и inference observability

## Идея

Сделать слой наблюдаемости, который показывает стоимость, latency, throughput, GPU utilization и качество inference/training workloads.

## Роли

- Infrastructure
- Inference
- Kernels
- Pretraining

## Компоненты

- Metrics catalog: utilization, queue time, tokens/sec, cost/run.
- Dashboards для research и production workloads.
- Profiling traces для hot paths.
- Alerts по degradation и waste.
- Capacity planning model.

## Минимальный результат

- Один dashboard для inference serving.
- Один dashboard для training runs.
- Cost attribution по user, org, project, agent.

## Расширения

- Tail latency analysis.
- GPU fragmentation report.
- Benchmark suite для inference optimizations.
- Автоматические рекомендации по batch size и scheduling.
