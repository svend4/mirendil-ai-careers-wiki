# Contract: Decision record schema

## Назначение

Decision record schema фиксирует важные технические, исследовательские и product decisions с evidence, risk и rollback.

## Required fields

| Поле | Тип | Описание |
| --- | --- | --- |
| decision_id | string | Стабильный идентификатор |
| decision_type | enum | design, release, security, compute, product, incident, governance |
| owner | string | Кто отвечает |
| status | enum | proposed, accepted, rejected, superseded, blocked |
| context | string | Почему решение нужно |
| options | array | Рассмотренные варианты |
| evidence_links | array | Eval, trace, benchmark, artifact, incident |
| risks | array | Риски и mitigations |
| decision | string | Что выбрано |
| rollback_path | string/null | Как откатить |
| reviewers | array | Кто проверил |
| review_date | date/null | Когда пересмотреть |

## Invariants

- Release decision требует eval evidence.
- Security decision требует threat model или explicit risk acceptance.
- Compute decision требует budget и cost owner.
- Product decision с user impact требует readiness или rollout plan.

## Связанные материалы

- [Decision records](../120-operating-model/03-decision-records.md)
- [Model release record](../140-artifact-library/03-model-release-record.md)
