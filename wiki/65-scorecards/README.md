# 65-scorecards

Scorecards помогают оценивать специалистов, команды и готовность роли к работе в AI R&D платформе. Это не HR-анкеты, а технические рубрики: что человек должен уметь объяснить, спроектировать, реализовать и безопасно масштабировать.

## Scorecards

- [Agent systems](01-agent-systems-scorecard.md) - agent loop, tools, memory, trace, approval gates.
- [RL and evaluation](02-rl-eval-scorecard.md) - reward, verifiers, trajectories, regression gates.
- [Compute systems](03-compute-scorecard.md) - GPU, training, inference, kernels, cost.
- [Security and governance](04-security-governance-scorecard.md) - sandbox, IAM, audit, retention, incident response.
- [Product and AI-native UX](05-product-ux-scorecard.md) - research workflow, trace UI, product metrics, human review.

## Уровни оценки

| Уровень | Смысл |
| --- | --- |
| L1 | Понимает термины и может читать документацию |
| L2 | Проектирует решение и видит trade-off |
| L3 | Реализует прототип и проверяет failure modes |
| L4 | Масштабирует решение, владеет рисками и операционной надежностью |

## Как использовать

1. Выберите кластер, соответствующий роли или проекту.
2. Используйте practical exercise как рабочую задачу.
3. Оцените evidence, а не уверенность в рассказе.
4. Привяжите gaps к дорожной карте из [40-roadmaps](../40-roadmaps/README.md).
