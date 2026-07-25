# RISK-007: Product trust failure

## Описание

Пользователь не понимает, что сделал агент, почему он это сделал, насколько результат надежен и где нужны approval или review. Даже сильная model capability становится непригодной без доверяемого product workflow.

## Indicators

- Пользователи принимают agent output без trace review.
- UI показывает final answer без evidence и uncertainty.
- Approval queue непонятна или игнорируется.
- Review burden растет быстрее adoption.
- Пользователи экспортируют workflow в неофициальные scripts.

## Mitigations

- Trace viewer с plan, tool calls, evidence и risk flags.
- Clear states: pending, blocked, risky, failed, accepted.
- Product metrics: time-to-insight, review burden, trust.
- Human feedback workflow.
- UX review для dangerous actions.

## Owners

- Primary: Product Workspace.
- Reviewers: Agent Runtime, Evaluation, Security Platform.

## Связанные gates

- [Product and AI-native UX scorecard](../65-scorecards/05-product-ux-scorecard.md)
- [AI-native research dashboard](../50-projects/05-ai-native-research-dashboard.md)
