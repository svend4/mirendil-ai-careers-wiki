# Security boundaries

## Назначение

Явно описать границы доверия между пользователем, агентом, tools, sandbox, compute, data store и production surfaces.

## Границы

| Граница | Контроль |
| --- | --- |
| User -> Agent | Auth, intent capture, approval policy |
| Agent -> Tool | Tool registry, policy engine, input validation |
| Agent -> Sandbox | Capability-limited execution, no direct secrets |
| Sandbox -> Network | Deny by default, allowlist, egress logs |
| Sandbox -> Data | Scoped mounts, read/write policy |
| Training -> Model weights | Access control, integrity, export logging |
| Product -> Governance | Audit, retention, billing, tenant isolation |

## Dangerous actions

- External network write.
- Production data mutation.
- Secret access.
- Model weight export.
- Long-running expensive compute job.
- Eval set modification.
- Customer data deletion or export.

## Требования к dangerous actions

- Явный actor.
- Явный reason.
- Policy decision.
- Approval, если действие не входит в allowlist.
- Audit event.
- Rollback или containment plan.
