# 420-wiki-release-management

Раздел описывает release-management самой Markdown-вики: versioning, release notes, migrations, deprecations, snapshot tagging and maintainer gates.

## Pages

- [Wiki versioning policy](01-versioning-policy.md) - Определить, что считается major, minor and patch update для Markdown-вики.
- [Release note template](02-release-note-template.md) - Дать единый формат release notes после крупного расширения вики.
- [Content migration plan](03-content-migration-plan.md) - Планировать перенос или переименование разделов без broken links и loss of context.
- [Deprecation policy](04-deprecation-policy.md) - Помечать устаревшие pages, roles или claims without silent deletion.
- [Snapshot tagging](05-snapshot-tagging.md) - Фиксировать reproducible snapshot after generator rebuild.
- [Maintainer release gate](06-maintainer-release-gate.md) - Закрыть release only when docs, generator and checks agree.

## Release principle

Вики считается выпущенной только если Markdown navigation, extension snapshot, generator output and maintenance checks agree with each other.

## Связанные разделы

- [Maintenance tooling](../220-maintenance-tooling/README.md)
- [Source refresh workflow](../410-source-refresh-workflow/README.md)
- [Audit checklists](../400-audit-checklists/README.md)
- [Operating report templates](../380-operating-report-templates/README.md)
