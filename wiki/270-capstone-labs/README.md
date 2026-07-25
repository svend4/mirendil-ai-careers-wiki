# 270-capstone-labs

Capstone labs - это end-to-end упражнения, где несколько ролей вместе создают полноценный artifact packet. Они подходят для bootcamp, senior interview loop, onboarding review и проверки зрелости платформы.

## Labs

- [Autonomous experiment capstone](01-autonomous-experiment-capstone.md) - Агент должен пройти путь от research hypothesis до eval report и decision record.
- [Model release capstone](02-model-release-capstone.md) - Команда готовит model candidate к internal release и должна пройти eval, risk и rollback gates.
- [Sandbox incident capstone](03-sandbox-incident-capstone.md) - Агент получил prompt injection через external tool output и предложил dangerous action.
- [Inference optimization capstone](04-inference-optimization-capstone.md) - Нужно снизить latency/cost serving path без деградации model quality и reliability.
- [RL environment capstone](05-rl-environment-capstone.md) - Нужно создать training-ready RL environment для long-horizon task с проверяемым success signal.
- [Governance rollout capstone](06-governance-rollout-capstone.md) - Команда внедряет политики data, tools, approvals и compute без остановки research velocity.

## Как проводить

1. Назначьте owner lab и участвующие роли.
2. Ограничьте scope одним realistic workflow.
3. Требуйте evidence packet, а не презентацию без артефактов.
4. Завершайте lab decision record и backlog follow-ups.
5. Проверяйте результат через [quality gates](../85-quality-gates/README.md), [governance policies](../230-governance-policies/README.md) и [scorecards](../65-scorecards/README.md).

## Связанные разделы

- [Role practical assignments](../250-role-practical-assignments/README.md)
- [Delivery plans](../240-delivery-plans/README.md)
- [Artifact library](../140-artifact-library/README.md)
- [Decision record examples](../280-decision-record-examples/README.md)
