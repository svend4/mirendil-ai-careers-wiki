# Product and AI-native UX interview kit

## Для каких ролей

- [Design Engineer](../20-positions/03-design-engineer/README.md)
- [Product Development](../20-positions/14-product-development/README.md)
- [Model Evaluation](../20-positions/07-model-evaluation/README.md)

## Что проверяем

- Research workflow mapping.
- Product entities: experiment, run, eval, trace, decision, approval.
- Trace viewer и evidence presentation.
- Human review и trust calibration.
- Product metrics: time-to-insight, review burden, adoption.

## Design exercise

Спроектируйте экран review для agent proposal: пользователь видит гипотезу, trace, eval comparison, risk flags и может принять, отклонить или отправить на итерацию.

## Debugging exercise

Пользователи принимают agent outputs без открытия trace, а regression rate растет. Разберите UX, incentives, missing metrics и product changes.

## Strong signals

- Кандидат показывает evidence и uncertainty.
- Разделяет states: risky, blocked, failed, accepted.
- Учитывает approval latency и review burden.
- Метрики связаны с research outcomes, а не кликами.

## Red flags

- UI скрывает tool calls и risk flags.
- Нет empty/error/blocked states.
- Product success = activity count.
- Пользователь не может понять, кто отвечает за action.

## Rubric

Используйте [Product and AI-native UX scorecard](../65-scorecards/05-product-ux-scorecard.md).
