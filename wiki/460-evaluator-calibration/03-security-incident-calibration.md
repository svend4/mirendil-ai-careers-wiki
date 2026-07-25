# Security incident calibration

## Audience

Security, Platform, Incident Commander, Governance owner

## Goal

Align severity, blast radius, evidence needs and escalation threshold.

## Calibration exercises

- Classify near-miss vs incident.
- Assign provisional severity with partial evidence.
- Review canary/exfiltration drill output.
- Write minimal incident finding.

## Metrics

- Severity agreement
- Escalation false negative rate
- Evidence completeness
- Time-to-triage

## Output

Severity examples, escalation threshold notes and finding examples.

## Cadence

Run before creating release-grade datasets, after major rubric changes, and after repeated disagreement appears in [operating reports](../380-operating-report-templates/README.md).

## Quality bar

- Reviewers label independently before discussion.
- Disagreement examples are kept as training material.
- Adjudication rationale is written, not only discussed.
- Updated rubric links back to [labeling guidelines](../450-labeling-guidelines/README.md).

## Links

- [Labeling guidelines](../450-labeling-guidelines/README.md)
- [Eval trust decision tree](../330-decision-trees/05-eval-trust-decision-tree.md)
- [Benchmark suite blueprints](../430-benchmark-suite-blueprints/README.md)
- [Audit checklists](../400-audit-checklists/README.md)
