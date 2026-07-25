# 360-slo-error-budgets

SLO/error-budget specs задают, какое качество должна держать AI R&D платформа, когда можно расширять автономию или запускать новые capabilities, а когда нужно остановиться и чинить базовую надежность.

## Specs

- [Agent runtime SLO](01-agent-runtime-slo.md) - Agent loop, tool execution, trace capture and recovery
- [Evaluation platform SLO](02-eval-platform-slo.md) - Eval registry, eval execution, result storage and regression gates
- [Sandbox security SLO](03-sandbox-security-slo.md) - Sandbox execution, egress control, audit logging and security policy enforcement
- [Compute infrastructure SLO](04-compute-infra-slo.md) - GPU queues, storage, batch inference, RL rollout and experiment scheduling
- [Inference serving SLO](05-inference-serving-slo.md) - Model serving, long-context inference, latency, throughput and rollback
- [Product workspace SLO](06-product-workspace-slo.md) - Research workspace UI, trace viewer, approvals, artifact navigation and feedback capture

## Правила

- SLO должен быть связан с user или reviewer outcome.
- Error budget нельзя тратить на ускорение, если нарушены safety или audit targets.
- Каждый SLO должен иметь dashboard, alert и review cadence.
- Если SLO не измеряется, он пока не является operational gate.

## Связанные разделы

- [Dashboard examples](../320-dashboard-examples/README.md)
- [Operational review cadences](../310-operational-review-cadences/README.md)
- [Metrics/observability](../150-metrics-observability/README.md)
- [Anti-patterns/remediations](../300-anti-patterns-remediations/README.md)
