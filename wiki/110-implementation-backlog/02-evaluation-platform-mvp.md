# Epic 02: Evaluation platform MVP

## Цель

Создать минимальный evaluation контур, который блокирует неподтвержденные model или agent changes.

## Scope

- Eval catalog.
- Baseline tracking.
- Verifier interface.
- Regression dashboard.
- Gate decision records: pass, warn, block.
- Failure analysis workflow.

## Out of scope

- Полностью автоматический reward model training.
- Универсальная benchmark-платформа для всех доменов.
- Promotion без human owner.

## Acceptance criteria

- Любой candidate model или harness change имеет baseline comparison.
- Есть не менее 3 verifiers с negative tests.
- Gate decision сохраняет evidence и rollback path.
- Eval readiness проходит [чеклист](../85-quality-gates/03-eval-readiness-checklist.md).

## Связанные роли

- [Model Evaluation](../20-positions/07-model-evaluation/README.md)
- [Post-Training, RL](../20-positions/04-post-training-rl/README.md)
- [RL Environments](../20-positions/11-post-training-rl-environments/README.md)
