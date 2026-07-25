# RISK-006: Model release regression

## Описание

Новый checkpoint, post-training recipe, inference optimization или agent harness change улучшает часть метрик, но ухудшает важное поведение, reliability, latency, cost или safety.

## Indicators

- Core eval pass, но product-specific eval fails.
- Latency или cost ухудшились без launch decision.
- Regression появляется только в long-horizon tasks.
- Failure analysis неполный или не связан с training change.
- Rollback path не проверен.

## Mitigations

- Release gate: pass, warn, block.
- Baseline comparison для capability, reliability, cost, latency.
- Canary или staged rollout.
- Rollback plan before promotion.
- Failure clustering and review.

## Owners

- Primary: Evaluation.
- Reviewers: Model Training, Inference, Product Workspace.

## Связанные gates

- [Model release eval gate](../70-playbooks/02-model-release-eval-gate.md)
- [Production readiness checklist](../85-quality-gates/04-production-readiness-checklist.md)
