# Artifact: Experiment brief

## Назначение

Коротко зафиксировать, зачем запускается эксперимент, как будет измерен результат и какие ограничения должен соблюдать агент или команда.

## Template

| Поле | Содержание |
| --- | --- |
| Experiment ID | Стабильный идентификатор |
| Owner | Человек или команда |
| Hypothesis | Что должно улучшиться и почему |
| Scope | Что входит и не входит |
| Success metric | Как понять, что гипотеза подтверждена |
| Baseline | С чем сравниваем |
| Budget | Time, GPU, tool calls, cost |
| Required approvals | Какие действия требуют подтверждения |
| Stop conditions | Когда остановить run |
| Linked evals | Ссылки на eval suite или verifier |

## Quality bar

- Гипотеза проверяема.
- Baseline явно указан.
- Budget ограничен.
- Есть stop conditions.
- Dangerous actions перечислены до запуска.

## Связанные материалы

- [Autonomous experiment loop](../70-playbooks/01-autonomous-experiment-loop.md)
- [Research operating cadence](../120-operating-model/04-research-operating-cadence.md)
