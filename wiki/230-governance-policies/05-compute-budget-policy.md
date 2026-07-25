# Compute budget policy

## Назначение

Compute - один из главных ограничителей AI R&D. Политика нужна, чтобы GPU, batch inference, large evals и long-running agents использовались осознанно, а expensive runs имели понятную цель, stop condition и owner.

## Классы затрат

| Класс | Пример | Контроль |
| --- | --- | --- |
| Small | локальный eval, короткий inference batch | team quota |
| Medium | ablation run, domain eval suite | owner approval и budget tag |
| Large | training run, broad sweep, multi-day eval | review, forecast, stop condition |
| Critical | production serving capacity, launch-critical run | leadership visibility и incident plan |

## Обязательные поля compute request

- hypothesis или operational purpose;
- owner;
- expected cost range;
- dataset/model/config references;
- success metric;
- stop condition;
- artifact destination;
- post-run analysis owner.

## Правила

- Нет hypothesis или purpose - нет expensive run.
- Нет stop condition - run не стартует.
- Повторный failed run требует analysis note перед новым запуском.
- Agents не могут самостоятельно повышать compute class.
- Capacity contention решается через приоритет: production safety, release gates, high-confidence research, exploratory work.

## Evidence

- [Compute request](../140-artifact-library/08-compute-request.md)
- [GPU capacity planning](../70-playbooks/04-gpu-capacity-planning.md)
- [Compute platform backlog](../110-implementation-backlog/04-compute-platform-foundation.md)

## Метрики

- GPU utilization по очередям.
- Cost per accepted experiment result.
- Доля runs со stop condition.
- Количество повторных failed runs без analysis note.
