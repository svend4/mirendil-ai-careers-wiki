# 70-playbooks

Playbooks - это рабочие процедуры для команды AI R&D платформы. Они отвечают на вопрос не "что это такое", а "как действовать, когда нужно провести работу безопасно и воспроизводимо".

## Playbooks

- [Autonomous experiment loop](01-autonomous-experiment-loop.md) - полный цикл автономного эксперимента.
- [Model release eval gate](02-model-release-eval-gate.md) - выпуск модели через eval и regression gates.
- [Agent sandbox incident response](03-agent-sandbox-incident-response.md) - действия при подозрении на опасное поведение агента или sandbox.
- [GPU capacity planning](04-gpu-capacity-planning.md) - планирование compute и предотвращение waste.
- [Research trace review](05-research-trace-review.md) - разбор trace агента и исследовательских решений.
- [Data lineage and retention](06-data-lineage-and-retention.md) - происхождение данных, артефактов и retention.

## Как использовать

1. Выберите playbook до начала работы, а не после инцидента.
2. Заполните артефакты и владельцев.
3. Проверьте quality gate из [85-quality-gates](../85-quality-gates/README.md).
4. Сохраните результат как ссылку из задачи или проекта.
