# Incident response RACI

## Ownership scope

Security, platform, model, agent, data, infra and product trust incidents

## RACI

| Type | Owner |
| --- | --- |
| Accountable | Incident commander for active incident |
| Responsible | Service owner, Security Engineer, Platform/Infra owner as applicable |
| Consulted | Product, Legal/governance owner if restricted data or external impact exists |
| Informed | Affected teams, leadership for high severity incidents |

## Escalation path

Escalate unknown blast radius as higher severity until evidence narrows scope.

## Required evidence

- Incident report
- Audit events
- Agent trace
- Risk register update

## Review cadence

Use the relevant review from [operational review cadences](../310-operational-review-cadences/README.md). If a decision changes ownership boundaries, create a [decision record](../200-protocols-contracts/06-decision-record-schema.md).

## Acceptance checklist

- Accountable owner is one person or one explicitly named function.
- Responsible owners can produce the required evidence.
- Consulted roles are consulted before the decision, not after incident.
- Informed roles receive decision outcome and follow-ups.
- Escalation path is clear before urgency appears.

## Links

- [Handoff contracts](../340-handoff-contracts/README.md)
- [Decision trees](../330-decision-trees/README.md)
- [Evidence packets](../290-evidence-packets/README.md)
- [Operating model](../120-operating-model/README.md)
