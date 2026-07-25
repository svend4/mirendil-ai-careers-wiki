# Product trust research dataset recipe

## Purpose

Собрать UX/research examples for trace comprehension, approvals and blocked states.

## Candidate sources

- Usability sessions
- Reviewer notes
- Approval requests
- Trace viewer feedback
- Product trust incidents

## Minimum fields

- case_id
- workflow_state
- user_role
- evidence_available
- decision_time
- confusion_point
- severity

## Quality checks

- No private user notes without consent
- Cases tagged by workflow state
- High-severity feedback separated
- Outcome metrics linked to product decisions

## Primary use

Product trust benchmark suite, launch readiness, design review.

## Governance checklist

- Owner, purpose and retention are recorded.
- Sensitive data class is explicit.
- Source version and generation recipe are recorded.
- Dataset can be referenced from an eval report or experiment brief.
- Known limitations and excluded cases are documented.

## Links

- [Dataset card](../140-artifact-library/05-dataset-card.md)
- [Data governance policy](../230-governance-policies/01-data-governance-policy.md)
- [Benchmark suite blueprints](../430-benchmark-suite-blueprints/README.md)
- [Audit checklists](../400-audit-checklists/README.md)
