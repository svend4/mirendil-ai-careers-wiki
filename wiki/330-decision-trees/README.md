# 330-decision-trees

Decision trees помогают быстро выбрать следующий шаг в типичных AI R&D ситуациях: запускать ли дорогой run, выпускать ли модель, требовать ли approval, добавлять ли tool, доверять ли eval и эскалировать ли incident.

## Trees

- [Expensive compute decision tree](01-expensive-compute-decision-tree.md) - Можно ли запускать medium/large GPU, RL или batch inference run?
- [Model release decision tree](02-model-release-decision-tree.md) - Можно ли выпускать model candidate?
- [Agent action approval decision tree](03-agent-action-approval-decision-tree.md) - Нужен ли human approval для agent action?
- [Tool onboarding decision tree](04-tool-onboarding-decision-tree.md) - Можно ли добавить новый tool в agent/platform registry?
- [Eval trust decision tree](05-eval-trust-decision-tree.md) - Можно ли доверять eval result для решения?
- [Incident escalation decision tree](06-incident-escalation-decision-tree.md) - Нужно ли эскалировать failure или anomaly как incident?

## Как использовать

1. Откройте дерево по типу решения.
2. Пройдите вопросы сверху вниз.
3. Если evidence отсутствует, фиксируйте missing evidence, а не принимайте решение на ощущениях.
4. Заканчивайте decision record, backlog item или explicit block/approval.

## Связанные разделы

- [Governance policies](../230-governance-policies/README.md)
- [Evidence packets](../290-evidence-packets/README.md)
- [Operational review cadences](../310-operational-review-cadences/README.md)
- [Decision record examples](../280-decision-record-examples/README.md)
