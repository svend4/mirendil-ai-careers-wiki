# Source inventory

## Purpose

Зафиксировать, какие внешние источники участвуют в snapshot и какие страницы они питают.

## Steps

- Собрать canonical URL, owner, source type and last checked date.
- Связать источник с affected wiki sections.
- Отметить stable claims and volatile claims.
- Отдельно отметить job postings and dated news.

## Evidence

- Source URL
- Last checked date
- Affected sections
- Volatility class

## Gate

Нельзя менять snapshot date без обновленного inventory.

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
