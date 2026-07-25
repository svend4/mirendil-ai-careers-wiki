# 300-anti-patterns-remediations

Раздел фиксирует типичные ошибки AI R&D платформы и практические remediation paths. Его удобно использовать для design review, incident review, onboarding и подготовки к launch gates.

## Anti-patterns

- [Agent autonomy anti-patterns](01-agent-autonomy-anti-patterns.md) - Agent Harness, Platform, Product
- [Evaluation anti-patterns](02-evaluation-anti-patterns.md) - Model Evaluation, Post-Training RL, Product
- [Security and governance anti-patterns](03-security-governance-anti-patterns.md) - Security, Platform, Governance
- [Compute and infrastructure anti-patterns](04-compute-infra-anti-patterns.md) - Infrastructure, Inference, Kernels, RL Infra
- [RL training anti-patterns](05-rl-training-anti-patterns.md) - Post-Training RL, RL Environments, RL Infra
- [Product and UX anti-patterns](06-product-ux-anti-patterns.md) - Design Engineer, Product Development, Platform

## Как использовать

1. Найдите область: agent autonomy, evals, security, compute, RL или product.
2. Сравните symptoms с текущим workflow.
3. Если symptom проявляется, не исправляйте только UI или wording: проверьте root control, evidence и owner.
4. Привяжите remediation к [quality gate](../85-quality-gates/README.md), [governance policy](../230-governance-policies/README.md) или [delivery plan](../240-delivery-plans/README.md).

## Связанные разделы

- [Risk register](../130-risk-register/README.md)
- [Governance policies](../230-governance-policies/README.md)
- [Evidence packets](../290-evidence-packets/README.md)
- [Maturity model](../170-maturity-model/README.md)
