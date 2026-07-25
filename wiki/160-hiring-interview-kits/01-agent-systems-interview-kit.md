# Agent systems interview kit

## Для каких ролей

- [Agent Harness](../20-positions/02-agent-harness/README.md)
- [AI for AI Systems](../20-positions/05-ai-for-ai-systems/README.md)
- [Product Development](../20-positions/14-product-development/README.md)

## Что проверяем

- Понимание agent loop.
- Tool contracts и failure modes.
- State, memory, checkpointing и replay.
- Approval gates для dangerous actions.
- Observability и trace review.

## Design exercise

Спроектируйте agent runtime, который получает задачу “найти причину eval regression”, вызывает tools, запускает sandbox checks, сохраняет trace и предлагает gate decision.

## Debugging exercise

Trace показывает, что агент 12 раз повторил один tool call, вышел за budget и предложил принять результат без eval. Разберите root causes и предложите controls.

## Strong signals

- Кандидат явно отделяет planning, execution, observation и decision.
- Указывает stop conditions и budget limits.
- Делает tool schema и policy частью дизайна.
- Говорит о replay и audit, а не только о prompt quality.

## Red flags

- Нет модели состояния.
- Нет approval для risky tools.
- Агент считается надежным без eval и trace.
- Failure modes описаны общими словами.

## Rubric

Используйте [Agent systems scorecard](../65-scorecards/01-agent-systems-scorecard.md).
