# Artifact: Incident report

## Назначение

Сохранить факты, timeline, blast radius, root cause и follow-ups после инцидента без потери evidence.

## Template

| Поле | Содержание |
| --- | --- |
| Incident ID | Стабильный идентификатор |
| Severity | SEV0-SEV3 |
| Commander | Ответственный за координацию |
| Summary | Что произошло |
| Timeline | Временная шкала |
| Blast radius | Кого и что затронуло |
| Evidence | Logs, traces, artifacts, alerts |
| Root cause | Техническая причина |
| Contributing factors | Процессы и gaps |
| Remediation | Что исправляем |
| Regression tests | Как не повторить |
| Follow-ups | Owners и deadlines |

## Quality bar

- Timeline отделен от интерпретации.
- Evidence сохранен ссылками.
- Follow-ups имеют owners.
- Добавлен хотя бы один новый detection или prevention control.

## Связанные материалы

- [Incident and escalation model](../120-operating-model/06-incident-escalation-model.md)
- [Agent sandbox incident response](../70-playbooks/03-agent-sandbox-incident-response.md)
