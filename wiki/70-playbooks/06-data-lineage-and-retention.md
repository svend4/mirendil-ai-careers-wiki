# Playbook: Data lineage and retention

## Назначение

Сохранять происхождение данных, артефактов и решений так, чтобы команда могла объяснить, откуда взялся результат, какие данные использовались и когда их нужно удалить.

## Объекты lineage

- Raw datasets.
- Filtered datasets.
- Training batches.
- Checkpoints.
- Eval sets.
- Agent traces.
- Human feedback.
- Product artifacts.

## Шаги

1. Присвоить каждому dataset и artifact стабильный ID.
2. Записывать source, transformation, owner, timestamp и policy tags.
3. Связать training run с data version, code version и config.
4. Связать eval result с model version, eval version и environment.
5. Применить retention policy по типу данных и требованиям клиента.
6. Проверять deletion requests через lineage graph.

## Retention matrix

| Класс данных | Retention | Особые требования |
| --- | --- | --- |
| Customer data | Минимально необходимый срок | Deletion и audit trail |
| Training data | По policy источника | Provenance и license |
| Eval sets | Долгосрочно, с access control | Защита от leakage |
| Agent traces | Ограниченно, зависит от sensitivity | Redaction и access logs |
| Model weights | Долгосрочно, strict access | Integrity и export control |

## Связанные страницы

- [Governance и auditability](../30-cross-cutting/05-governance-auditability.md)
- [Security, platform и governance](../40-roadmaps/04-security-governance.md)
