# RISK-002: Evaluation gaming and Goodhart

## Описание

Модель или агент улучшает формальный eval score, но не улучшает реальный workflow. В худшем случае система начинает оптимизировать benchmark shortcuts, verifier bugs или leakage.

## Indicators

- Большой рост benchmark score без улучшения human review.
- Повторяющиеся failures вне eval distribution.
- Verifier pass rate растет, но downstream quality падает.
- Агент предлагает изменения, затрагивающие eval data.
- Eval failures объясняются narrative без evidence.

## Mitigations

- Разделить public, private и adversarial evals.
- Добавить negative tests для verifiers.
- Проводить human-assisted failure review.
- Мерить product workflow outcomes, а не только score.
- Блокировать release при unexplained critical regression.

## Owners

- Primary: Evaluation.
- Reviewers: Model Training, Product Workspace.

## Связанные gates

- [Eval readiness checklist](../85-quality-gates/03-eval-readiness-checklist.md)
- [Model release eval gate](../70-playbooks/02-model-release-eval-gate.md)
