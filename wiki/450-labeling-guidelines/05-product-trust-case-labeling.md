# Product trust case labeling

## Purpose

Размечать UX/product trust cases for trace comprehension, approval friction and blocked state visibility.

## Label set

- user role
- workflow state
- confusion point
- decision latency class
- severity
- evidence availability

## Labeling rules

- Label user confusion without blaming the user.
- Separate UX wording issue from missing platform evidence.
- Record whether reviewer needed raw logs.
- Tag blocked/risky states that were hidden or unclear.

## Ambiguity handling

If feedback is anecdotal, keep it as qualitative evidence until repeated or corroborated.

## Quality checks

- Labeler can cite trace, input, output, metric or artifact evidence.
- Label does not assume hidden model intent.
- Ambiguous examples are not forced into clean labels.
- Label distribution is reviewed for imbalance and missing negative cases.
- Labels can feed a [benchmark suite](../430-benchmark-suite-blueprints/README.md) or [dataset recipe](../440-dataset-recipes/README.md).

## Links

- [Dataset recipes](../440-dataset-recipes/README.md)
- [Benchmark suite blueprints](../430-benchmark-suite-blueprints/README.md)
- [Audit checklists](../400-audit-checklists/README.md)
- [Evaluator calibration](../460-evaluator-calibration/README.md)
