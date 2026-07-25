# 240-delivery-plans

Раздел переводит backlog, architecture и policies в фазовые delivery plans. Каждый план показывает, какие capabilities строить первыми, какие gates ставить и какой результат считать приемлемым.

## Планы

- [Platform MVP delivery plan](01-platform-mvp-delivery-plan.md) - сквозной MVP AI R&D платформы.
- [Agent harness delivery plan](02-agent-harness-delivery-plan.md) - agent loop, tools, memory, trace и recovery.
- [Evaluation stack delivery plan](03-evaluation-stack-delivery-plan.md) - eval registry, verifiers, regression gates и reports.
- [Security sandbox delivery plan](04-security-sandbox-delivery-plan.md) - изоляция code execution, policies и incident workflow.
- [Training and inference delivery plan](05-training-inference-delivery-plan.md) - training runs, serving, profiling и capacity.
- [Product research workspace delivery plan](06-product-research-workspace-delivery-plan.md) - UI/UX для experiment, traces, artifacts и approvals.
- [Governance rollout delivery plan](07-governance-rollout-delivery-plan.md) - внедрение policies, owners, gates и audit events.
- [Hiring enablement delivery plan](08-hiring-enablement-delivery-plan.md) - как связать hiring kits, scorecards и onboarding.

## Общий delivery принцип

- Сначала строится тонкий end-to-end slice, а не изолированный идеальный компонент.
- Каждый milestone должен производить проверяемый artifact.
- Release gate появляется одновременно с capability, а не после инцидента.
- Delivery plan должен ссылаться на backlog, architecture, policy и metrics.

## Связанные разделы

- [Implementation backlog](../110-implementation-backlog/README.md)
- [Reference architecture](../80-reference-architecture/README.md)
- [Governance policies](../230-governance-policies/README.md)
- [Metrics/observability](../150-metrics-observability/README.md)
