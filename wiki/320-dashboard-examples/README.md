# 320-dashboard-examples

Раздел описывает примеры dashboard-ов для AI R&D платформы. Это не BI-спецификация ради графиков: каждый dashboard должен отвечать на operational question и вести к конкретным actions.

## Dashboards

- [Experiment health dashboard](01-experiment-health-dashboard.md) - Какие experiments дают useful signal, где stuck/failed runs и какие decisions overdue?
- [Eval regression dashboard](02-eval-regression-dashboard.md) - Какие candidates регрессируют, какие evals flaky и какие failures блокируют release?
- [Agent runtime dashboard](03-agent-runtime-dashboard.md) - Насколько надежно агенты выполняют long-horizon tasks и где autonomy становится unsafe?
- [Compute capacity dashboard](04-compute-capacity-dashboard.md) - Как используется GPU/serving capacity и где wasted compute или queue contention?
- [Security audit dashboard](05-security-audit-dashboard.md) - Какие restricted actions, exceptions и audit gaps требуют review?
- [Product trust dashboard](06-product-trust-dashboard.md) - Помогает ли продукт принимать research decisions быстрее и безопаснее?

## Правила dashboard design

- Начинайте с question и decision, а не с доступных метрик.
- У каждого виджета должен быть owner и expected action.
- Dashboard должен показывать stale/missing evidence, а не скрывать пустоты.
- Для risky workflows dashboard должен ссылаться на policy, gate или incident process.

## Связанные разделы

- [Metrics/observability](../150-metrics-observability/README.md)
- [Operational review cadences](../310-operational-review-cadences/README.md)
- [Evidence packets](../290-evidence-packets/README.md)
- [Anti-patterns/remediations](../300-anti-patterns-remediations/README.md)
