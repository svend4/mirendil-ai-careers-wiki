# Сценарий: Материаловедение и simulation-driven research

## Цель

Автоматизировать цикл поиска новых материалов: генерация гипотез, запуск simulations, анализ результатов и итерация модели.

## Workflow

1. Исследователь задает свойства материала и constraints.
2. Агент предлагает simulation plan и критерии успеха.
3. Compute platform запускает batch simulations и сохраняет artifacts.
4. Evaluation сравнивает predicted properties с baseline и физическими constraints.
5. Agent trace review проверяет, почему система предложила следующий candidate.
6. Утвержденные results попадают в dataset для следующей итерации.

## Участвующие роли

- [Agent Harness](../20-positions/02-agent-harness/README.md)
- [Infrastructure](../20-positions/10-infrastructure/README.md)
- [Pretraining](../20-positions/09-pretraining/README.md)
- [Model Evaluation](../20-positions/07-model-evaluation/README.md)
- [Product Development](../20-positions/14-product-development/README.md)

## Артефакты

- Simulation environment spec.
- Compute budget и scheduling policy.
- Eval constraints.
- Candidate material report.
- Lineage graph: input, simulation, model, result.

## Основные риски

- Expensive runaway simulations.
- Невоспроизводимые simulation environments.
- Agent overfits на удобные proxy metrics.
- Нет lineage между simulation и model update.
- Слабый UI для сравнения candidates.

## Quality gates

- [GPU capacity planning](../70-playbooks/04-gpu-capacity-planning.md)
- [Research trace review](../70-playbooks/05-research-trace-review.md)
- [Design review checklist](../85-quality-gates/01-design-review-checklist.md)
