# Eval trust decision tree

## Decision question

Можно ли доверять eval result для решения?

## Starting condition

Eval result используется для release, roadmap, model comparison или research decision.

## Decision path

- Eval has task definition, dataset version and metric definition? Если нет - not decision-grade.
- Baseline and candidate comparable? Если нет - rerun or normalize.
- Thresholds были заданы до review? Если нет - mark exploratory.
- Flakiness or verifier disagreement high? Если да - require failure analysis.
- Failures have taxonomy and owner mapping? Если да - result can drive decision.

## Required evidence

- Eval report
- Eval result schema
- Failure taxonomy
- Baseline metrics
- Verifier analysis

## Possible outcomes

Decision-grade, exploratory only, rerun required, repair eval, block release.

## Fallback

Если eval спорный, открыть eval regression review и не использовать его как единственный gate.

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
