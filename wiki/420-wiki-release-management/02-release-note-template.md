# Release note template

## Purpose

Дать единый формат release notes после крупного расширения вики.

## Rules

- Summarize new sections.
- List changed navigation and generator files.
- Report check-wiki output.
- Call out source snapshot changes separately.

## Output

Release note that can be pasted into PR, commit body or project log.

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
