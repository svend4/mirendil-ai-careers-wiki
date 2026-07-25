# Agent tooling RACI

## Ownership scope

Tool contracts, tool registry, policy classes, approvals and trace visibility

## RACI

| Type | Owner |
| --- | --- |
| Accountable | Agent Harness owner |
| Responsible | Agent Harness, Platform, Security Engineer |
| Consulted | Product Development, Design Engineer, Infrastructure |
| Informed | Researchers using agent workflows |

## Escalation path

Escalate high-risk or ambiguous tool classes to security/governance review.

## Required evidence

- Tool card
- Tool contract schema
- Threat model
- Audit event examples

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
