# Content migration plan

## Purpose

Планировать перенос или переименование разделов без broken links и loss of context.

## Rules

- Define old path and new path.
- Update inbound links before removing old page.
- Add redirect note if old page remains.
- Run link check before and after generator.

## Output

Migration checklist and affected links report.

## Release checklist

- New or changed pages are linked from relevant indexes.
- Generator includeDirs are updated if a new directory was added.
- Snapshot was rebuilt with ebuild-extend-mirendil-wiki.ps1.
- Main generator was run after rebuild.
- check-wiki.ps1 passes after generation.

## Links

- [Maintenance tooling](../220-maintenance-tooling/README.md)
- [Source refresh workflow](../410-source-refresh-workflow/README.md)
- [Audit checklists](../400-audit-checklists/README.md)
- [Decision records](../280-decision-record-examples/README.md)
