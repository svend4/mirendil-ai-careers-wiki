# Training and inference delivery plan

## Цель

Связать training, post-training, inference и compute operations в один управляемый контур: experiments запускаются с понятной стоимостью, model candidates оцениваются, serving configs профилируются, а regressions видны до production impact.

## Фаза 1: run metadata foundation

- Ввести единый metadata set для training и inference runs.
- Сохранять config, dataset, model version, hardware и cost tags.
- Поддержать базовый profiling throughput, memory и latency.
- Связать run с experiment brief.

## Фаза 2: optimization loop

- Добавить benchmark suite для inference changes.
- Ввести ablation tracking для training recipes.
- Подключить compute budget policy.
- Сравнивать cost-quality trade-off между candidates.

## Фаза 3: release serving readiness

- Добавить canary или shadow evaluation для serving candidates.
- Определить rollback target.
- Настроить alerts на latency, error rate, cost и quality drift.
- Подготовить release packet для model/inference stack.

## Acceptance criteria

- Каждый expensive run имеет owner, purpose и stop condition.
- Inference optimization не принимается без quality regression check.
- Model serving config связан с model release record.
- Capacity plan учитывает research, eval и production queues.

## Связанные файлы

- [Compute budget policy](../230-governance-policies/05-compute-budget-policy.md)
- [Compute request](../140-artifact-library/08-compute-request.md)
- [GPU capacity planning](../70-playbooks/04-gpu-capacity-planning.md)
- [Compute platform foundation](../110-implementation-backlog/04-compute-platform-foundation.md)
