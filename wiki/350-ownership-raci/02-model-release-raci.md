# Model release RACI

## Ownership scope

Candidate promotion, eval gate, serving readiness, rollback and release decision

## RACI

| Type | Owner |
| --- | --- |
| Accountable | Release owner |
| Responsible | Model Evaluation, Post-Training RL, Inference |
| Consulted | Security Engineer, Product Development, Platform |
| Informed | Research leads, support/on-call owners |

## Escalation path

Escalate ship/block/exception disputes to model release review.

## Required evidence

- Model release evidence packet
- Eval bundle
- Rollback plan
- Decision record

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
