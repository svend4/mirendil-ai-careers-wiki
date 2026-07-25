# Roadmap: Compute, pretraining и inference

## Цель

Понять, как устроен технический фундамент frontier AI R&D: данные, pretraining, GPU clusters, kernels, inference serving и cost/performance loop.

## Связанные роли

- [Pretraining](../20-positions/09-pretraining/README.md)
- [Infrastructure](../20-positions/10-infrastructure/README.md)
- [Inference](../20-positions/06-inference/README.md)
- [Kernels](../20-positions/08-kernels/README.md)

## Базовые знания

- Distributed training и parallelism strategies.
- Dataset curation, filtering, deduplication, contamination control.
- GPU scheduling, quota, priority, checkpointing.
- Inference serving: batching, KV cache, quantization, speculative decoding.
- Profiling, low precision и custom kernels.

## Практические задания

1. Нарисовать путь данных от raw dataset до training batch.
2. Описать failure plan для distributed training run на тысячи GPU.
3. Составить матрицу inference optimization: latency, throughput, quality, cost.
4. Выбрать bottleneck operator и описать custom kernel plan.
5. Спроектировать cost dashboard: dollars per run, token, eval, request.

## Артефакты

- Compute architecture map.
- Training runbook.
- Inference SLO profile.
- Profiling report template.
- Cost visibility model.

## Контрольные вопросы

- Где теряется GPU utilization?
- Что будет при падении узла во время long run?
- Как проверить, что quantization не ломает reasoning?
- Какие данные нельзя допускать в pretraining mix?
- Как отделить research serving от production serving?
