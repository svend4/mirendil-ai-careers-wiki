# Deprecation policy

## Purpose

Помечать устаревшие pages, roles или claims without silent deletion.

## Rules

- Deprecation requires reason and date.
- Deprecated page links to replacement or archive note.
- Role removals from source become status changes, not silent deletes.
- Deprecated assumptions must be revisited at source refresh.

## Output

Deprecation note and follow-up owner.

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
