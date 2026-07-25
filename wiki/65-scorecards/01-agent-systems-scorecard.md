# Scorecard: Agent systems

## Связанные роли

- [Agent Harness](../20-positions/02-agent-harness/README.md)
- [AI for AI Systems](../20-positions/05-ai-for-ai-systems/README.md)
- [Product Development](../20-positions/14-product-development/README.md)
- [Infrastructure](../20-positions/10-infrastructure/README.md)

## Что оцениваем

Способность проектировать агентный runtime для AI R&D: loop, tools, state, memory, sandbox, trace, recovery и human approval.

## Уровни

| Уровень | Поведение |
| --- | --- |
| L1 | Объясняет agent loop, tool calling и зачем нужен trace |
| L2 | Проектирует state model, tool contract и approval policy |
| L3 | Собирает прототип агента с sandbox, logs и recovery path |
| L4 | Масштабирует long-running agents, multi-agent coordination и observability |

## Practical exercise

Спроектировать агента, который получает гипотезу “новый eval показывает regression”, запускает проверку, собирает evidence, предлагает решение и останавливается при policy violation.

## Evidence

- Диаграмма agent loop.
- Tool registry contract.
- State model.
- Trace example.
- Failure taxonomy.
- Approval gate policy.

## Красные флаги

- Агент может бесконечно продолжать работу без stop condition.
- Tool calls не имеют схемы ошибок.
- Trace нельзя воспроизвести.
- Dangerous actions не отделены от обычных действий.
- State смешивается между проектами или пользователями.

## Связанные материалы

- [Roadmap: Agentic AI R&D](../40-roadmaps/01-agentic-ai-rnd.md)
- [Playbook: Autonomous experiment loop](../70-playbooks/01-autonomous-experiment-loop.md)
- [Reference: Agent runtime](../80-reference-architecture/02-agent-runtime.md)
