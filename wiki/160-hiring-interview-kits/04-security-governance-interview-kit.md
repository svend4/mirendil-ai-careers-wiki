# Security and governance interview kit

## Для каких ролей

- [Security Engineer](../20-positions/01-security-engineer/README.md)
- [Platform](../20-positions/13-platform/README.md)
- [Infrastructure](../20-positions/10-infrastructure/README.md)

## Что проверяем

- Threat modeling для agents, tools, sandbox и data.
- IAM, actor attribution и audit completeness.
- Secrets, network egress и production boundary controls.
- Data lineage, retention и deletion.
- Incident response и regression prevention.

## Design exercise

Спроектируйте security boundary для agent sandbox, который запускает AI-generated code, использует tools и читает scoped datasets.

## Debugging exercise

Агент получил prompt injection из внешнего документа и попытался отправить artifact во внешний endpoint. Разберите containment, evidence, blast radius и remediation.

## Strong signals

- Кандидат начинает с assets и trust boundaries.
- Network deny by default.
- No direct secrets in sandbox.
- Audit event содержит actor, action, target, policy decision, timestamp.

## Red flags

- Security сводится только к auth.
- Агентный code получает secrets напрямую.
- Нет incident timeline и evidence preservation.
- Deletion request нельзя связать с lineage.

## Rubric

Используйте [Security and governance scorecard](../65-scorecards/04-security-governance-scorecard.md).
