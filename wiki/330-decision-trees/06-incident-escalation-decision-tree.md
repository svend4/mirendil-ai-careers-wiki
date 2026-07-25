# Incident escalation decision tree

## Decision question

Нужно ли эскалировать failure или anomaly как incident?

## Starting condition

Событие может быть agent failure, sandbox anomaly, data leak risk, model regression, infra outage или governance breach.

## Decision path

- Есть impact on production, restricted data, model weights или external side effect? Если да - escalate.
- Есть repeated failure без owner? Escalate to operational review.
- Есть suspicious sandbox/tool behavior? Treat as security incident until triaged.
- Есть user-facing trust issue? Escalate to product and governance owners.
- Impact contained and reversible with known owner? Track as backlog but keep evidence.

## Required evidence

- Audit events
- Agent trace
- Incident report
- Dashboard alert
- Risk register item

## Possible outcomes

Security incident, operational incident, product incident, backlog follow-up, monitor only.

## Fallback

Если impact неизвестен, выбрать higher severity until evidence narrows blast radius.

## Review checklist

- Decision не опирается на устный статус без evidence.
- Missing evidence превращается в action item.
- Outcome имеет owner, expiry или next review date.
- High-risk decision фиксируется через [decision record](../200-protocols-contracts/06-decision-record-schema.md).

## Links

- [Evidence packets](../290-evidence-packets/README.md)
- [Quality gates](../85-quality-gates/README.md)
- [Governance policies](../230-governance-policies/README.md)
- [Dashboard examples](../320-dashboard-examples/README.md)
