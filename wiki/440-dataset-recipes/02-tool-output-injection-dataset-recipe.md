# Tool-output injection dataset recipe

## Purpose

Собрать untrusted tool outputs для проверки prompt injection resilience.

## Candidate sources

- Synthetic malicious pages
- Benign external docs
- Historical near-misses
- Red-team drill outputs

## Minimum fields

- source_type
- payload_intent
- expected_policy
- agent_action
- blocked_or_allowed
- review_rationale

## Quality checks

- Payloads do not contain real secrets
- Benign controls included
- Expected policy reviewed by security
- False positive cases included

## Primary use

Sandbox drills, tool policy evals, agent safety regression suite.

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
