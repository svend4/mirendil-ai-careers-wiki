# Модуль 02: Agent runtime и tools

## Цель

Научиться проектировать agent runtime для долгих AI R&D задач: tool calls, state, trace, sandbox, approval и recovery.

## Изучить

- [Agent Harness](../20-positions/02-agent-harness/README.md)
- [AI for AI Systems](../20-positions/05-ai-for-ai-systems/README.md)
- [Roadmap: Agentic AI R&D](../40-roadmaps/01-agentic-ai-rnd.md)
- [Reference: Agent runtime](../80-reference-architecture/02-agent-runtime.md)
- [Scorecard: Agent systems](../65-scorecards/01-agent-systems-scorecard.md)

## Практика

1. Спроектировать tool registry для research agent.
2. Описать state model для long-running experiment.
3. Сделать trace schema: plan, action, observation, decision, approval.
4. Определить stop conditions и failure modes.

## Артефакты

- Tool contract.
- State model.
- Trace example.
- Approval policy.

## Проверка

- Dangerous actions отделены от обычных tool calls.
- Trace можно использовать для review.
- Recovery path описан для timeout, sandbox failure и policy denial.
