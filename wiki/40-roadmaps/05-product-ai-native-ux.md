# Roadmap: Product и AI-native UX

## Цель

Спроектировать продуктовый слой, в котором исследователь, инженер и агент работают над AI R&D задачами через понятные абстракции, а не через хаотичный набор логов и scripts.

## Связанные роли

- [Design Engineer](../20-positions/03-design-engineer/README.md)
- [Product Development](../20-positions/14-product-development/README.md)
- [Model Evaluation](../20-positions/07-model-evaluation/README.md)
- [Agent Harness](../20-positions/02-agent-harness/README.md)

## Базовые знания

- Research workflow mapping.
- Product entities: experiment, run, checkpoint, eval, artifact, decision.
- Human-in-the-loop review.
- Trace viewer и объяснимость действий агента.
- Метрики продукта: time-to-insight, run success, review burden, trust.

## Практические задания

1. Нарисовать journey от гипотезы до accepted model change.
2. Описать экраны experiment dashboard и run detail.
3. Спроектировать trace viewer для agent execution.
4. Составить список пустых, ошибочных и опасных состояний UI.
5. Описать product metrics для researcher productivity.

## Артефакты

- Journey map.
- Information architecture.
- UI state model.
- Trace viewer requirements.
- Product metric tree.

## Контрольные вопросы

- Какие действия агента должны быть видны пользователю?
- Где UI должен замедлить пользователя ради безопасности?
- Как показать uncertainty без потери доверия?
- Какие internal abstractions нельзя протаскивать в продукт?
- Как измерить, что продукт ускоряет research, а не просто добавляет экранов?
