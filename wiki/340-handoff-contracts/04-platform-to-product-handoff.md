# Platform to product handoff

## From

Platform / Agent Harness / Eval

## To

Product Development / Design Engineer

## Purpose

Передать platform capability в product workflow без скрытых states и unsupported promises.

## Required handoff packet

- Capability contract
- Lifecycle states
- Failure and blocked states
- Evidence links
- Known limitations

## Acceptance condition

Product owner может построить workflow, launch criteria и user-facing copy без guessing.

## Reject or return if

No clear user job, state model incomplete или policy blocks invisible.

## Handoff checklist

- Есть owner передающей и принимающей стороны.
- Есть decision needed или next action.
- Evidence links открываются и не требуют устного контекста.
- Risks, assumptions и limitations указаны явно.
- Follow-up можно перенести в [implementation backlog](../110-implementation-backlog/README.md).

## Links

- [Evidence packets](../290-evidence-packets/README.md)
- [Operational review cadences](../310-operational-review-cadences/README.md)
- [Decision trees](../330-decision-trees/README.md)
- [Artifact library](../140-artifact-library/README.md)
