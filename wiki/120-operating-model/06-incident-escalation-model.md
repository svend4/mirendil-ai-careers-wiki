# Incident and escalation model

## Цель

Заранее определить, кто и как действует при security, evaluation, compute, product или data incidents.

## Severity levels

| Severity | Описание | Пример |
| --- | --- | --- |
| SEV0 | Active data leak или production-impacting unsafe behavior | Agent exfiltration, cross-tenant leak |
| SEV1 | High-risk blocked issue без confirmed impact | Sandbox escape attempt, model weight exposure risk |
| SEV2 | Research disruption или expensive compute runaway | Stuck GPU jobs, corrupted checkpoints |
| SEV3 | Local issue без platform-wide impact | Broken eval run, UI review bug |

## Escalation paths

- Security incident -> Security Platform owner + Incident commander.
- Eval incident -> Evaluation owner + Model Training owner.
- Compute incident -> Compute Platform owner + affected research owners.
- Product incident -> Product Workspace owner + support owner.
- Data incident -> Security Platform owner + data owner + governance owner.

## Первые действия

1. Остановить risky workflow.
2. Зафиксировать logs, traces, artifacts и timestamps.
3. Назначить incident commander.
4. Определить blast radius.
5. Выбрать containment.
6. Сообщить affected owners.

## Связанные материалы

- [Agent sandbox incident response](../70-playbooks/03-agent-sandbox-incident-response.md)
- [Data lineage and retention](../70-playbooks/06-data-lineage-and-retention.md)
