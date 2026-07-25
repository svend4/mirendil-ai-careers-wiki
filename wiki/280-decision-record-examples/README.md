# 280-decision-record-examples

Раздел содержит примеры decision records для AI R&D платформы. Их цель - показать, как фиксировать решения по release, policy, compute, automation, UX и platform contracts так, чтобы решение можно было проверить позже.

## Примеры

- [Block model release after eval regression](01-block-model-release.md) - Blocked
- [Approve restricted sandbox egress policy](02-approve-sandbox-egress-policy.md) - Approved
- [Accept temporary compute exception for RL probe](03-accept-compute-exception.md) - Exception accepted
- [Choose unified experiment object contract](04-choose-experiment-contract.md) - Approved
- [Ship trace viewer internal beta](05-ship-trace-viewer-beta.md) - Approved for internal beta
- [Reject unscoped AI automation proposal](06-reject-unscoped-automation.md) - Rejected

## Формат чтения

Каждый пример содержит context, decision, alternatives, consequences, evidence и follow-ups. Для реальной работы используйте [decision record schema](../200-protocols-contracts/06-decision-record-schema.md) и связывайте record с artifacts, evals, risks и owners.

## Связанные разделы

- [Protocols/contracts](../200-protocols-contracts/README.md)
- [Governance policies](../230-governance-policies/README.md)
- [Capstone labs](../270-capstone-labs/README.md)
- [Artifact library](../140-artifact-library/README.md)
