# Infrastructure to research handoff

## From

Infrastructure / RL Infra / Inference

## To

Research / Post-training / Evaluation

## Purpose

Передать compute, storage или serving constraints research owners до запуска дорогих runs.

## Required handoff packet

- Capacity status
- Queue class and quota
- Known infrastructure risks
- Cost estimate
- Stop/rollback constraints

## Acceptance condition

Research owner может спланировать run с realistic cost, stop condition и artifact destination.

## Reject or return if

No capacity window, no cost estimate или unclear storage/lineage path.

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
