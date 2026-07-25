# Tool onboarding decision tree

## Decision question

Можно ли добавить новый tool в agent/platform registry?

## Starting condition

Новый tool считается platform capability, если агент или пользователь может вызвать его в workflow.

## Decision path

- Tool has owner and purpose? Если нет - reject.
- Tool read-only, write, expensive или external side-effect? Classify risk.
- Есть input/output schema, error model и audit needs? Если нет - request tool card.
- Есть negative tests для dangerous paths? Если нет - require security review.
- Есть UI/trace visibility для failures and denials? Если да - onboard behind policy class.

## Required evidence

- Tool card
- Tool contract schema
- Threat model
- Negative tests
- Audit event examples

## Possible outcomes

Onboard, onboard behind approval, sandbox only, reject или request missing contract.

## Fallback

Для high-risk tools использовать security/governance review до registry merge.

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
