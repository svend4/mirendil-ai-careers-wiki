# Research agenda: Agent reliability and autonomy

## Главный вопрос

Как дать агенту больше автономности в AI R&D workflow, не теряя stop conditions, traceability, budget control и human accountability?

## Research questions

- Как измерять progress в long-horizon research tasks до финального результата?
- Какие stop conditions работают лучше: hard budget, uncertainty threshold, repeated failure, verifier disagreement?
- Как агент должен пересматривать план без drift от исходной цели?
- Как хранить memory так, чтобы она помогала, но не переносила ошибки между runs?
- Когда multi-agent decomposition повышает надежность, а когда создает конфликтующее состояние?

## Candidate experiments

- Сравнить agent loop с фиксированным планом и loop с controlled replanning.
- Измерить влияние trace review на accepted improvements и regression rate.
- Проверить разные stop policies на одинаковом наборе research tasks.
- Сравнить single-agent и multi-agent execution на long-horizon debugging задачах.

## Metrics

- Task completion with valid decision.
- Stop condition precision.
- Trace completeness.
- Repeated tool call rate.
- Human review reversal rate.

## Связанные материалы

- [Agent runtime metrics](../150-metrics-observability/02-agent-runtime-metrics.md)
- [RISK-001: Agent autonomy runaway](../130-risk-register/RISK-001-agent-autonomy-runaway.md)
- [Agent systems interview kit](../160-hiring-interview-kits/01-agent-systems-interview-kit.md)
