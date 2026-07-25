# Playbook: GPU capacity planning

## Назначение

Планировать GPU capacity так, чтобы research velocity не упиралась в хаос очередей, idle resources и неожиданные расходы.

## Когда применять

- Появляется новый training, RL или inference workload.
- Команда планирует long-running jobs.
- GPU utilization падает или очереди растут.
- Нужно оценить стоимость новой research roadmap.

## Входные данные

- Тип workload: pretraining, post-training, eval, inference, sandbox rollout.
- Required hardware profile.
- Expected duration и retry rate.
- Checkpointing strategy.
- Priority class и deadline.
- Cost ceiling.

## Шаги

1. Разделить workloads на interactive, batch, long-run и production-serving.
2. Определить quota и priority для команд и агентов.
3. Настроить scheduling policy: preemption, backfill, reservations.
4. Измерить utilization, queue time, failure rate и cost per result.
5. Добавить alerts по idle GPU, stuck jobs и runaway cost.
6. Раз в неделю пересматривать capacity forecast.

## Артефакты

- Capacity plan.
- Scheduling policy.
- Utilization dashboard.
- Cost forecast.
- Incident runbook для stuck или runaway jobs.

## Антипаттерны

- Измерять только utilization, игнорируя time-to-result.
- Давать агентам неограниченный compute budget.
- Смешивать production inference и research jobs без изоляции.
- Не проверять checkpoint recovery до long run.

## Связанные страницы

- [Compute efficiency](../30-cross-cutting/04-compute-efficiency.md)
- [Compute и inference observability](../50-projects/04-compute-inference-observability.md)
