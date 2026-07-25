# Snapshot update decision

## Purpose

Решить, когда менять snapshot date in README and docs.

## Steps

- Confirm refresh completed for all primary sources.
- Confirm role diff and claim review are done.
- Confirm generated snapshot was rebuilt.
- Record what changed since previous snapshot.

## Evidence

- Refresh checklist
- Decision record
- Updated README date if applicable
- Generated snapshot count

## Gate

Snapshot date changes only after source refresh and successful generation.

## Review checklist

- Source is primary where possible.
- Dates are explicit for time-sensitive claims.
- Affected wiki pages are listed.
- Changes are reproducible through generator and checks.
- If uncertainty remains, claim is marked as assumption or inference.

## Links

- [Sources](../00-meta/sources.md)
- [Maintenance tooling](../220-maintenance-tooling/README.md)
- [Decision trees](../330-decision-trees/README.md)
- [Audit checklists](../400-audit-checklists/README.md)
