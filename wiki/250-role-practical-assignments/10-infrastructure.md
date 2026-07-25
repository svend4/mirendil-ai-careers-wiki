# Практические задания: Инженер AI infrastructure

**Позиция:** [10-infrastructure](../20-positions/10-infrastructure/README.md)  
**Кластер:** GPU clusters / storage / scheduling

## Назначение

Training, eval, inference infrastructure, storage, scheduling и reliability.

## Starter assignment

**Тема:** GPU scheduler capacity review

Что сделать:

- Описать baseline workflow и границы задачи.
- Собрать evidence: traces, metrics, examples, configs или user workflow.
- Зафиксировать assumptions, risks и unknowns.
- Подготовить небольшой reviewable artifact.

## Core assignment

**Тема:** Artifact storage and lineage plan

Что сделать:

- Сформулировать goal и acceptance criteria.
- Связать работу с конкретным AI R&D lifecycle step.
- Подготовить artifact, который может использовать другая роль.
- Провести review через scorecard, gate, eval, benchmark или policy.

## Stretch assignment

**Тема:** Reliability incident review

Что сделать:

- Разобрать failure modes и edge cases.
- Показать trade-offs между quality, safety, cost, latency, reliability и research velocity.
- Предложить next iteration или rollout plan.
- Оформить decision record или launch/review memo.

## Expected portfolio packet

Capacity review, storage lineage plan, incident report

## Review checklist

- Артефакт можно проверить без устного объяснения автора.
- Есть ссылка на evidence, а не только мнение.
- Указаны risks, assumptions и rollback/stop criteria.
- Результат связан с ролью, delivery plan или governance policy.
- Следующее действие понятно: accept, revise, block, launch или investigate.

## Связанные разделы

- [30/60/90 план роли](../260-first-90-days/10-infrastructure.md)
- [Scorecards](../65-scorecards/README.md)
- [Artifact library](../140-artifact-library/README.md)
- [Governance policies](../230-governance-policies/README.md)
