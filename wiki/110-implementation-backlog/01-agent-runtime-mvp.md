# Epic 01: Agent runtime MVP

## Цель

Собрать минимальный agent runtime, который умеет выполнять AI R&D задачу с tools, trace, state и approval gates.

## Scope

- Task intake: goal, owner, budget, policy.
- Agent loop: plan, act, observe, decide.
- Tool registry с typed inputs/outputs.
- State store для steps, artifacts и decisions.
- Trace viewer format.
- Stop conditions и cancellation.

## Out of scope

- Полная multi-agent orchestration.
- Автоматическое изменение production systems.
- Неограниченный доступ к внешней сети.

## Acceptance criteria

- Один эксперимент проходит end-to-end по [Autonomous experiment loop](../70-playbooks/01-autonomous-experiment-loop.md).
- Trace проходит [Research trace review](../70-playbooks/05-research-trace-review.md).
- Dangerous actions требуют approval.
- Failure modes задокументированы.

## Связанные роли

- [Agent Harness](../20-positions/02-agent-harness/README.md)
- [AI for AI Systems](../20-positions/05-ai-for-ai-systems/README.md)
- [Product Development](../20-positions/14-product-development/README.md)
