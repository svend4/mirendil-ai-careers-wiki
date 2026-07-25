# Data и artifact lineage

## Назначение

Lineage graph отвечает на вопрос: какие данные, код, параметры, tools и решения привели к конкретному результату.

## Узлы графа

- Dataset.
- Transform.
- Training run.
- Checkpoint.
- Eval run.
- Agent trace.
- Human feedback.
- Decision record.
- Product release.

## Ребра графа

- derived-from.
- trained-on.
- evaluated-by.
- approved-by.
- generated-artifact.
- supersedes.
- blocked-by.

## Минимальная схема metadata

| Поле | Значение |
| --- | --- |
| id | Стабильный идентификатор |
| type | Dataset, run, checkpoint, eval, trace |
| owner | Команда или человек |
| created_at | Время создания |
| source | Источник или parent artifact |
| policy_tags | Sensitivity, license, retention |
| integrity | Hash или другой контроль целостности |

## Практическое применение

- Удаление клиентских данных.
- Debug regression.
- Проверка contamination.
- Объяснение release decision.
- Аудит доступа к model weights.
