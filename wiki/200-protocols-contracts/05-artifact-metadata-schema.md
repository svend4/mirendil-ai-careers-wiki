# Contract: Artifact metadata schema

## Назначение

Artifact metadata schema связывает файлы, reports, checkpoints, traces, datasets и decisions в управляемый lineage graph.

## Required fields

| Поле | Тип | Описание |
| --- | --- | --- |
| artifact_id | string | Стабильный идентификатор |
| artifact_type | enum | dataset, checkpoint, eval_report, trace, decision, model, code, report |
| owner | string | Команда или человек |
| created_at | timestamp | Время создания |
| source_refs | array | Parent artifacts или external sources |
| policy_tags | array | Sensitivity, license, retention, domain |
| integrity | string/null | Hash или checksum |
| retention_policy | string | Как долго хранить |
| deletion_path | string/null | Как удалить или redact |
| access_policy | string | Кто может читать/писать/export |

## Invariants

- Artifact без owner не считается production-ready.
- Dataset artifact требует source_refs и policy_tags.
- Checkpoint artifact требует integrity и access_policy.
- Eval report artifact требует candidate и baseline links.

## Связанные материалы

- [Dataset card](../140-artifact-library/05-dataset-card.md)
- [Data lineage and retention](../70-playbooks/06-data-lineage-and-retention.md)
