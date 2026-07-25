# Snapshot tagging

## Purpose

Фиксировать reproducible snapshot after generator rebuild.

## Rules

- Record snapshot date and generated file counts.
- Record source snapshot date separately from local release date.
- Keep rebuild and generate commands in release note.
- Store verification output from check-wiki.

## Output

Snapshot tag note with counts and commands.

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
