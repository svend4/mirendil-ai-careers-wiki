# Playbook: Research trace review

## Назначение

Проверять действия агента и исследовательские решения не по финальному ответу, а по полному trace: план, tool calls, наблюдения, ошибки, изменения и выводы.

## Когда применять

- Агент предлагает принять изменение.
- Эксперимент дал неожиданный результат.
- Нужно объяснить failure или regression.
- Решение повлияет на model, data, eval, security или production.

## Что смотреть

- Цель и исходные ограничения.
- План и изменение плана во время работы.
- Tool calls и их параметры.
- Ошибки, retries и ignored warnings.
- Использованные данные и артефакты.
- Eval results и интерпретация агентом.
- Финальное решение и confidence.

## Review rubric

| Критерий | Вопрос |
| --- | --- |
| Correctness | Действия действительно проверяют гипотезу? |
| Reproducibility | Можно повторить run по trace? |
| Safety | Были ли dangerous actions или policy violations? |
| Evidence | Вывод опирается на данные, а не на narrative? |
| Cost | Стоимость соответствует budget и value? |

## Выходы review

- Accept: trace достаточен, результат можно использовать.
- Needs iteration: есть gaps, нужен повтор или доп. eval.
- Reject: вывод не подтвержден evidence.
- Escalate: есть security, data или production risk.

## Связанные страницы

- [Autonomous experiment loop](01-autonomous-experiment-loop.md)
- [Agentic workflow](../30-cross-cutting/03-agentic-workflow.md)
- [AI-native research dashboard](../50-projects/05-ai-native-research-dashboard.md)
