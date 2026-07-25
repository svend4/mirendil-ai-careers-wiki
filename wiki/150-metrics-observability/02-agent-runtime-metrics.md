# Agent runtime metrics

## Цель

Измерять надежность и управляемость agent runtime, а не только количество выполненных tool calls.

## Метрики

| Метрика | Интерпретация |
| --- | --- |
| Task completion rate | Доля задач, завершенных с valid decision |
| Stop condition hit rate | Насколько часто агент останавливается по guardrails |
| Tool error rate | Надежность tool registry и integrations |
| Approval request rate | Нагрузка на human review |
| Dangerous action attempt rate | Risk signal |
| Trace completeness | Можно ли review/replay run |
| Recovery success rate | Устойчивость к failures |
| Average plan revisions | Плановая стабильность |

## Alerts

- Dangerous action attempt без approval event.
- Trace completeness ниже threshold.
- Tool error spike после release.
- Long-running task без progress event.

## Связанные материалы

- [Agent runtime](../80-reference-architecture/02-agent-runtime.md)
- [RISK-001: Agent autonomy runaway](../130-risk-register/RISK-001-agent-autonomy-runaway.md)
