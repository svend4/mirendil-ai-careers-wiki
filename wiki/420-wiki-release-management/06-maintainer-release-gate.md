# Maintainer release gate

## Purpose

Закрыть release only when docs, generator and checks agree.

## Rules

- README and wiki index include new sections.
- rebuild includeDirs contains new Markdown dirs.
- extend snapshot rebuilt.
- generate completed after rebuild.
- check-wiki passed.

## Output

Maintainer gate result with command outputs and residual risks.

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
