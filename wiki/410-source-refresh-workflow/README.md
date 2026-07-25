# 410-source-refresh-workflow

Раздел описывает, как обновлять внешний source snapshot. Текущий корневой README фиксирует снимок публичных материалов на 2026-07-01; этот раздел задает процедуру, по которой future maintainer может безопасно обновить дату и содержание.

## Workflow pages

- [Source inventory](01-source-inventory.md) - Зафиксировать, какие внешние источники участвуют в snapshot и какие страницы они питают.
- [Refresh checklist](02-refresh-checklist.md) - Провести безопасное обновление внешних источников без silent fact changes.
- [Job role diff workflow](03-job-role-diff-workflow.md) - Обновить роли и позиции, если careers/job board изменился.
- [Source claim review](04-source-claim-review.md) - Проверить, какие утверждения можно оставить, изменить или перенести в assumptions.
- [Citation hygiene](05-citation-hygiene.md) - Сохранить аккуратную работу с источниками и не копировать длинные внешние тексты.
- [Snapshot update decision](06-snapshot-update-decision.md) - Решить, когда менять snapshot date in README and docs.

## Основное правило

Не меняйте snapshot date и role facts без source diff, claim review, обновленного sources.md, пересборки snapshot и прохождения maintenance checks.

## Связанные разделы

- [Источники](../00-meta/sources.md)
- [Maintenance tooling](../220-maintenance-tooling/README.md)
- [Decision records](../280-decision-record-examples/README.md)
- [Wiki release management](../420-wiki-release-management/README.md)
