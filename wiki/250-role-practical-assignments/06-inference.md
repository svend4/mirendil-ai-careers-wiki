# Практические задания: Инженер inference-систем

**Позиция:** [06-inference](../20-positions/06-inference/README.md)  
**Кластер:** Serving / latency / reliability

## Назначение

Serving frontier models, memory, latency, throughput и long-context inference.

## Starter assignment

**Тема:** Inference performance baseline

Что сделать:

- Описать baseline workflow и границы задачи.
- Собрать evidence: traces, metrics, examples, configs или user workflow.
- Зафиксировать assumptions, risks и unknowns.
- Подготовить небольшой reviewable artifact.

## Core assignment

**Тема:** Long-context serving trade-off analysis

Что сделать:

- Сформулировать goal и acceptance criteria.
- Связать работу с конкретным AI R&D lifecycle step.
- Подготовить artifact, который может использовать другая роль.
- Провести review через scorecard, gate, eval, benchmark или policy.

## Stretch assignment

**Тема:** Serving rollback drill

Что сделать:

- Разобрать failure modes и edge cases.
- Показать trade-offs между quality, safety, cost, latency, reliability и research velocity.
- Предложить next iteration или rollout plan.
- Оформить decision record или launch/review memo.

## Expected portfolio packet

Benchmark spec, serving config proposal, rollback runbook

## Review checklist

- Артефакт можно проверить без устного объяснения автора.
- Есть ссылка на evidence, а не только мнение.
- Указаны risks, assumptions и rollback/stop criteria.
- Результат связан с ролью, delivery plan или governance policy.
- Следующее действие понятно: accept, revise, block, launch или investigate.

## Связанные разделы

- [30/60/90 план роли](../260-first-90-days/06-inference.md)
- [Scorecards](../65-scorecards/README.md)
- [Artifact library](../140-artifact-library/README.md)
- [Governance policies](../230-governance-policies/README.md)
