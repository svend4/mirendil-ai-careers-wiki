# Artifact: Dataset card

## Назначение

Описать dataset так, чтобы его можно было безопасно использовать в training, evaluation или product workflow с понятным lineage и retention.

## Template

| Поле | Содержание |
| --- | --- |
| Dataset ID | Стабильный идентификатор |
| Owner | Data owner |
| Source | Происхождение |
| License / terms | Ограничения использования |
| Sensitivity | Public, internal, customer, regulated |
| Intended use | Training, eval, product, debugging |
| Prohibited use | Что нельзя делать |
| Transformations | Filtering, deduplication, redaction |
| Retention | Срок хранения |
| Deletion path | Как удалить данные |
| Contamination risk | Связь с eval leakage |

## Quality bar

- Есть source и owner.
- Sensitivity указана до использования.
- Retention и deletion path определены.
- Eval data отделены от training data.

## Связанные материалы

- [Data lineage and retention](../70-playbooks/06-data-lineage-and-retention.md)
- [RISK-003: Data leakage and lineage gaps](../130-risk-register/RISK-003-data-leakage-lineage-gaps.md)
