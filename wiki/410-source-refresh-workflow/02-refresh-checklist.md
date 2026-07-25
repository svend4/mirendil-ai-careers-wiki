# Refresh checklist

## Purpose

Провести безопасное обновление внешних источников без silent fact changes.

## Steps

- Проверить primary sources перед пересказами.
- Сравнить current page with previous snapshot.
- Записать changed, removed and new claims.
- Обновить affected sections and source notes.
- Запустить maintenance checks.

## Evidence

- Source diff notes
- Updated sources.md
- Changed pages list
- Check-wiki output

## Gate

Refresh принимается только с diff summary and passing checks.

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
