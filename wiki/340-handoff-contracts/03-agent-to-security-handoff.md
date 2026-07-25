# Agent harness to security handoff

## From

Agent Harness / Platform

## To

Security Engineer

## Purpose

Передать новый agent capability, tool или action class на security review.

## Required handoff packet

- Agent trace examples
- Tool contract
- Policy class proposal
- Dangerous action list
- Negative test ideas

## Acceptance condition

Security owner может оценить abuse paths, required controls и audit needs.

## Reject or return if

Tool permissions ambiguous, no trace visibility или no denial state.

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
