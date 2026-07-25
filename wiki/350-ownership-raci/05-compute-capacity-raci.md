# Compute capacity RACI

## Ownership scope

GPU queues, large runs, batch inference, RL rollout capacity and quota policy

## RACI

| Type | Owner |
| --- | --- |
| Accountable | Infrastructure/compute owner |
| Responsible | Infrastructure, RL Infrastructure, Inference |
| Consulted | Research leads, Model Evaluation, Product Development |
| Informed | Experiment owners and release owners |

## Escalation path

Escalate priority conflicts to compute capacity review.

## Required evidence

- Compute request
- Capacity dashboard
- Stop condition
- Post-run analysis

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
