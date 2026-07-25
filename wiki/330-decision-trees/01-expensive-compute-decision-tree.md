# Expensive compute decision tree

## Decision question

Можно ли запускать medium/large GPU, RL или batch inference run?

## Starting condition

Run считается expensive, если он конкурирует за shared GPU, влияет на release/eval capacity или требует отдельной quota.

## Decision path

- Есть hypothesis или operational purpose? Если нет - block и запросить experiment brief.
- Есть owner, cost range и stop condition? Если нет - request missing evidence.
- Есть baseline или expected signal? Если нет - сначала small probe или analysis.
- Затрагивает release/safety path? Если да - приоритет выше exploratory, но нужен monitoring.
- Есть artifact destination и post-run analysis owner? Если да - approve bounded run.

## Required evidence

- Compute request
- Experiment brief
- Prior run or baseline metrics
- Queue/capacity dashboard
- Stop condition

## Possible outcomes

Approve, resize, defer, require small probe или block.

## Fallback

Если capacity contention не решается, перенести вопрос на compute capacity review.

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
