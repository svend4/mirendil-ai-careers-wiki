# Сценарий: AI для drug discovery lab

## Цель

Дать лаборатории возможность строить специализированные модели для поиска молекул, анализа экспериментов и ускорения гипотез без превращения всей организации во frontier AI lab.

## Workflow

1. Ученый формулирует biological target и ограничение по данным.
2. Agent runtime собирает доступные datasets и предлагает experiment plan.
3. Sandbox запускает feature extraction, baseline models и verifiers.
4. Training loop дообучает специализированную модель или reward model.
5. Eval suite проверяет usefulness, hallucination, leakage и domain constraints.
6. Human review принимает или отклоняет candidate insights.

## Участвующие роли

- [AI for AI Systems](../20-positions/05-ai-for-ai-systems/README.md)
- [Post-Training, RL](../20-positions/04-post-training-rl/README.md)
- [Model Evaluation](../20-positions/07-model-evaluation/README.md)
- [Platform](../20-positions/13-platform/README.md)
- [Security Engineer](../20-positions/01-security-engineer/README.md)

## Артефакты

- Dataset lineage и license notes.
- Experiment brief.
- Domain eval suite.
- Human review record.
- Retention matrix для sensitive research data.

## Основные риски

- Sensitive biological data leakage.
- Непроверяемые claims модели.
- Eval contamination из научных публикаций.
- Reward, который оптимизирует proxy, а не lab usefulness.
- Compliance и data retention gaps.

## Quality gates

- [Security review checklist](../85-quality-gates/02-security-review-checklist.md)
- [Eval readiness checklist](../85-quality-gates/03-eval-readiness-checklist.md)
- [Data lineage and retention](../70-playbooks/06-data-lineage-and-retention.md)
