# RISK-001: Agent autonomy runaway

## Описание

Агент продолжает выполнять действия без понятного stop condition, выходит за budget, меняет план без review или пытается выполнить dangerous action без approval.

## Indicators

- Run длится дольше planned budget.
- Агент повторяет похожие tool calls без прогресса.
- Trace содержит plan drift без evidence.
- Agent запрашивает новые permissions во время выполнения.
- Cost растет быстрее expected value.

## Mitigations

- Stop conditions в task intake.
- Budget limits на time, tool calls, compute и network.
- Approval gates для dangerous actions.
- Trace review перед accept decision.
- Kill switch для long-running runs.

## Owners

- Primary: Agent Runtime.
- Reviewers: Security Platform, Product Workspace, Compute Platform.

## Связанные gates

- [Agent systems scorecard](../65-scorecards/01-agent-systems-scorecard.md)
- [Autonomous experiment loop](../70-playbooks/01-autonomous-experiment-loop.md)
