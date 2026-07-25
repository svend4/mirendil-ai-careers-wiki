# Artifact: Compute request

## Назначение

Стандартизировать запрос на GPU/compute для training, eval, rollout или inference workload до фактического расхода ресурсов.

## Template

| Поле | Содержание |
| --- | --- |
| Request ID | Стабильный идентификатор |
| Owner | Команда и человек |
| Workload class | Interactive, batch, long-run, production-serving |
| Purpose | Зачем нужен compute |
| Expected value | Какой decision или artifact получится |
| Hardware profile | GPU/CPU/memory/storage/network |
| Duration | Ожидаемое время |
| Cost ceiling | Верхняя граница бюджета |
| Checkpointing | Как восстанавливаться |
| Stop condition | Когда остановить |
| Priority | Research, release-blocking, production |

## Quality bar

- Есть expected value, не только resource ask.
- Cost ceiling указан.
- Stop condition и checkpointing определены.
- Priority согласован с scheduling policy.

## Связанные материалы

- [GPU capacity planning](../70-playbooks/04-gpu-capacity-planning.md)
- [RISK-005: Compute runaway cost](../130-risk-register/RISK-005-compute-runaway-cost.md)
