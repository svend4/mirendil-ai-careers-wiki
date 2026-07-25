# Decision records

## Цель

Фиксировать важные решения в формате, который позволяет понять context, evidence, alternatives, risk и rollback.

## Когда нужен decision record

- Добавляется новый agent tool.
- Меняется training recipe, data mix или reward strategy.
- Продвигается model checkpoint.
- Открывается новый sandbox capability.
- Меняется security boundary или retention policy.
- Запускается expensive long-running workload.

## Шаблон

| Поле | Содержание |
| --- | --- |
| Decision ID | Стабильный идентификатор |
| Owner | Человек или команда |
| Context | Почему решение нужно сейчас |
| Options | Рассмотренные варианты |
| Evidence | Eval, trace, benchmark, review, incident data |
| Risks | Что может пойти не так |
| Decision | Что выбрано |
| Rollback | Как откатить или остановить |
| Review date | Когда пересмотреть решение |

## Правила качества

- Evidence должен ссылаться на конкретные artifacts.
- Нельзя принимать decision только по narrative агента.
- Risk должен иметь mitigation или explicit acceptance.
- Rollback path обязателен для production и expensive compute.

## Связанные материалы

- [Research trace review](../70-playbooks/05-research-trace-review.md)
- [Model release eval gate](../70-playbooks/02-model-release-eval-gate.md)
