# 400-audit-checklists

Audit checklists превращают controls в проверяемые вопросы. Их можно использовать перед release, red-team drill, governance review, SLO review или internal beta expansion.

## Checklists

- [Agent workflow audit](01-agent-workflow-audit.md) - Agent loops, tool calls, traces, approvals and recovery states
- [Model release audit](02-model-release-audit.md) - Model candidate, eval gate, serving readiness, rollback and release decision
- [Data governance audit](03-data-governance-audit.md) - Datasets, traces, customer data, synthetic data, retention and lineage
- [Sandbox security audit](04-sandbox-security-audit.md) - Code execution, network egress, filesystem boundaries, secrets and persistence
- [Compute and cost audit](05-compute-cost-audit.md) - GPU queues, large runs, batch inference, RL rollout and storage artifacts
- [Product readiness audit](06-product-readiness-audit.md) - Research workspace, trace viewer, approvals, launch readiness and product trust

## Правила аудита

- Audit должен ссылаться на evidence, а не на устные утверждения.
- Missing evidence фиксируется как finding.
- Finding получает owner, severity, due date и destination: backlog, risk register, decision record или incident.
- Repeated findings должны попадать в [anti-patterns/remediations](../300-anti-patterns-remediations/README.md).

## Связанные разделы

- [Control catalog](../390-control-catalog/README.md)
- [Evidence packets](../290-evidence-packets/README.md)
- [Ownership/RACI](../350-ownership-raci/README.md)
- [Operating report templates](../380-operating-report-templates/README.md)
