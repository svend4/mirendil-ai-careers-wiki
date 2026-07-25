# Model release decision tree

## Decision question

Можно ли выпускать model candidate?

## Starting condition

Candidate готов к review, когда есть release scope, baseline, eval bundle и rollback target.

## Decision path

- Есть полный eval bundle? Если нет - block.
- Есть blocking regression? Если да - block или exception только с owner и expiry.
- Serving impact приемлем по latency, memory и cost? Если нет - defer или resize rollout.
- Known limitations понятны users/reviewers? Если нет - request release packet update.
- Rollback target и monitoring готовы? Если да - ship или internal beta.

## Required evidence

- Model release evidence packet
- Eval regression dashboard
- Model release record
- Serving benchmark
- Decision record

## Possible outcomes

Ship, internal beta, block, approve exception или request more evidence.

## Fallback

При споре между quality и product urgency использовать release governance policy и decision record.

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
