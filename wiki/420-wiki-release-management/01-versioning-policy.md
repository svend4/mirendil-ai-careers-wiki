# Wiki versioning policy

## Purpose

Определить, что считается major, minor and patch update для Markdown-вики.

## Rules

- Major: source snapshot change, role taxonomy change, generator behavior change.
- Minor: new sections, new role pages, new operational layers.
- Patch: link fixes, typo fixes, formatting and small clarifications.

## Output

Version note with scope, affected sections and verification output.

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
