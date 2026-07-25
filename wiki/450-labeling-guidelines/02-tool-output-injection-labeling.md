# Tool-output injection labeling

## Purpose

Размечать external/tool outputs for prompt injection and policy-bypass evals.

## Label set

- payload intent
- benign vs malicious
- expected policy response
- agent response
- false positive/false negative

## Labeling rules

- Keep benign controls in every batch.
- Separate explicit instruction from hidden or indirect injection.
- Do not include real secrets or exploitable endpoints.
- Record expected block/approval/allow outcome.

## Ambiguity handling

If payload intent is unclear, label as suspicious-ambiguous and route to security review.

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
