# Data and model assets RACI

## Ownership scope

Datasets, model weights, checkpoints, lineage, retention and exports

## RACI

| Type | Owner |
| --- | --- |
| Accountable | Data/model asset owner |
| Responsible | Security Engineer, Platform, Research owners |
| Consulted | Model Evaluation, Infrastructure, Governance owner |
| Informed | Release owners and affected teams |

## Escalation path

Escalate restricted data or model export questions to governance review.

## Required evidence

- Dataset card
- Model release record
- Audit event
- Policy exception record

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
