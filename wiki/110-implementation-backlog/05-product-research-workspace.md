# Epic 05: Product research workspace

## Цель

Создать рабочую поверхность исследователя для experiments, runs, evals, agent traces, approvals и decisions.

## Scope

- Experiment list и run detail.
- Agent trace viewer.
- Eval comparison view.
- Approval queue.
- Decision record UI.
- Product metrics: time-to-insight, review burden, trust, adoption.

## Out of scope

- Маркетинговая landing page.
- Универсальный dashboard для всех доменов без workflow focus.
- Скрытие trace ради “простоты”.

## Acceptance criteria

- Пользователь может пройти scenario: create experiment, review trace, compare evals, accept/reject proposal.
- UI state matrix покрывает empty, loading, failed, blocked, risky states.
- Product UX проходит [scorecard](../65-scorecards/05-product-ux-scorecard.md).
- Production readiness проходит [чеклист](../85-quality-gates/04-production-readiness-checklist.md).

## Связанные роли

- [Design Engineer](../20-positions/03-design-engineer/README.md)
- [Product Development](../20-positions/14-product-development/README.md)
- [Model Evaluation](../20-positions/07-model-evaluation/README.md)
