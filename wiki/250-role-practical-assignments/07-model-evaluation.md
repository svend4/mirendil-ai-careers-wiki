# Практические задания: Инженер model evaluation

**Позиция:** [07-model-evaluation](../20-positions/07-model-evaluation/README.md)  
**Кластер:** Evals / regression gates

## Назначение

Eval suites, benchmark registry, verifiers, failure taxonomies и release gates.

## Starter assignment

**Тема:** Eval suite design

Что сделать:

- Описать baseline workflow и границы задачи.
- Собрать evidence: traces, metrics, examples, configs или user workflow.
- Зафиксировать assumptions, risks и unknowns.
- Подготовить небольшой reviewable artifact.

## Core assignment

**Тема:** Failure taxonomy for regressions

Что сделать:

- Сформулировать goal и acceptance criteria.
- Связать работу с конкретным AI R&D lifecycle step.
- Подготовить artifact, который может использовать другая роль.
- Провести review через scorecard, gate, eval, benchmark или policy.

## Stretch assignment

**Тема:** Release gate dry run

Что сделать:

- Разобрать failure modes и edge cases.
- Показать trade-offs между quality, safety, cost, latency, reliability и research velocity.
- Предложить next iteration или rollout plan.
- Оформить decision record или launch/review memo.

## Expected portfolio packet

Eval suite spec, failure taxonomy, release eval memo

## Review checklist

- Артефакт можно проверить без устного объяснения автора.
- Есть ссылка на evidence, а не только мнение.
- Указаны risks, assumptions и rollback/stop criteria.
- Результат связан с ролью, delivery plan или governance policy.
- Следующее действие понятно: accept, revise, block, launch или investigate.

## Связанные разделы

- [30/60/90 план роли](../260-first-90-days/07-model-evaluation.md)
- [Scorecards](../65-scorecards/README.md)
- [Artifact library](../140-artifact-library/README.md)
- [Governance policies](../230-governance-policies/README.md)
