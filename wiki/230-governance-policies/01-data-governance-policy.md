# Data governance policy

## Назначение

Политика задает правила работы с training data, eval data, customer data, telemetry, traces и артефактами экспериментов. Цель - сохранить воспроизводимость исследований без неконтролируемого распространения чувствительных данных.

## Классы данных

| Класс | Примеры | Требование |
| --- | --- | --- |
| Public | открытые benchmark-и, публичные статьи | lineage и версия источника |
| Internal | traces экспериментов, synthetic data, внутренние prompt sets | owner, retention, доступ по роли |
| Restricted | customer data, secrets, private code, proprietary datasets | explicit approval, audit trail, минимальные права |
| Prohibited | данные без права обработки, неизвестные дампы, credentials в датасетах | запрет на ingestion |

## Обязательные правила

- Каждый dataset получает owner, purpose, source, license note и retention period.
- Любой dataset для training или eval должен иметь lineage до источника или synthetic generation recipe.
- Restricted data не используется в ad hoc experiments без отдельного approval.
- Агентам запрещено сохранять данные в долгосрочную память без маркировки класса и purpose.
- Export данных за пределы sandbox требует audit event.

## Approval gates

- Новый restricted dataset - approval от data owner и security owner.
- Повторное использование customer data для training - approval от governance owner.
- Удаление lineage или retention metadata - запрещено без incident review.

## Evidence

- [Dataset card](../140-artifact-library/05-dataset-card.md)
- [Audit event schema](../200-protocols-contracts/04-audit-event-schema.md)
- [Data lineage playbook](../70-playbooks/06-data-lineage-and-retention.md)

## Метрики

- Доля datasets с заполненным owner и lineage.
- Количество experiments с unknown data source.
- Количество restricted data access events без связанного approval.
- Среднее время закрытия retention exceptions.
