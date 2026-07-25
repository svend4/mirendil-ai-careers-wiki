# Artifact: Threat model

## Назначение

Зафиксировать угрозы перед запуском tool, sandbox capability, data access, external integration или production workflow.

## Template

| Поле | Содержание |
| --- | --- |
| System/component | Что моделируем |
| Assets | Data, weights, secrets, evals, compute |
| Actors | User, agent, service, attacker, tenant |
| Trust boundaries | Где меняется уровень доверия |
| Threats | Что может пойти не так |
| Controls | Prevent, detect, respond |
| Residual risks | Что остается после controls |
| Tests | Negative/security tests |
| Reviewers | Security, infra, product, data owner |

## Quality bar

- Assets перечислены конкретно.
- Trust boundaries показаны явно.
- Controls имеют detection и response, а не только prevention.
- Residual risks приняты owner-ом.

## Связанные материалы

- [Security boundaries](../80-reference-architecture/05-security-boundaries.md)
- [Security and governance scorecard](../65-scorecards/04-security-governance-scorecard.md)
