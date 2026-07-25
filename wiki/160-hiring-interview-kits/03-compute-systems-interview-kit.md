# Compute systems interview kit

## Для каких ролей

- [Infrastructure](../20-positions/10-infrastructure/README.md)
- [Pretraining](../20-positions/09-pretraining/README.md)
- [Inference](../20-positions/06-inference/README.md)
- [Kernels](../20-positions/08-kernels/README.md)

## Что проверяем

- Distributed training и checkpoint recovery.
- GPU scheduling, quotas, priority, preemption.
- Inference SLO, latency и cost.
- Profiling и bottleneck analysis.
- Cost per accepted improvement, не только utilization.

## Design exercise

Спроектируйте compute platform для команды, где одновременно работают pretraining, RL rollouts, eval sweeps и production inference.

## Debugging exercise

GPU utilization 92%, но accepted improvements падают, queue time растет, а long-running jobs часто перезапускаются. Разберите причины и план действий.

## Strong signals

- Кандидат разделяет workload classes.
- Учитывает checkpointing до long runs.
- Привязывает cost к decision value.
- Разделяет research и production isolation.

## Red flags

- Optimization обсуждается только как throughput.
- Нет kill switch для runaway jobs.
- Нет strategy для tail latency.
- Нет метрик recovery и failure rate.

## Rubric

Используйте [Compute systems scorecard](../65-scorecards/03-compute-scorecard.md).
