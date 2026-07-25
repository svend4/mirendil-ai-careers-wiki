# Agent harness delivery plan

## Цель

Построить agent harness, который умеет планировать, вызывать tools, сохранять состояние, восстанавливаться после ошибок и оставлять trace, пригодный для review, eval и audit.

## Фаза 1: deterministic loop

- Определить состояния agent loop: plan, act, observe, reflect, stop.
- Реализовать tool registry с read-only и workspace-write tools.
- Сохранять trace в стабильном формате.
- Добавить stop reasons: success, blocked, budget, policy, error.

## Фаза 2: memory and recovery

- Разделить task state, memory и artifacts.
- Добавить checkpoint/resume для long-horizon tasks.
- Ввести retry policy с лимитами.
- Сохранять compact summaries для длинных traces.

## Фаза 3: policy-aware autonomy

- Подключить tool access policy.
- Добавить human approval request как отдельный state.
- Ввести budget-aware planning.
- Добавить evals для hallucinated tool use, loop stalls и unsafe action proposals.

## Acceptance criteria

- Любой tool call связан с trace step.
- Agent может остановиться без потери artifacts.
- Human reviewer видит, почему агент выбрал действие.
- Policy denial не ломает весь workflow, а переводит его в recoverable state.

## Связанные файлы

- [Agent trace schema](../200-protocols-contracts/01-agent-trace-schema.md)
- [Tool access policy](../230-governance-policies/03-tool-access-policy.md)
- [Autonomous experiment loop](../70-playbooks/01-autonomous-experiment-loop.md)
- [Agent runtime MVP](../110-implementation-backlog/01-agent-runtime-mvp.md)
