# Block model release after eval regression

**Status:** Blocked

## Context

Model candidate улучшил coding benchmark, но ухудшил tool-use safety и verifier agreement.

## Decision

Не выпускать candidate в internal default; разрешить limited research use с явной маркировкой.

## Alternatives considered

- Ship with warning
- Run more evals without decision
- Rollback to previous release and discard candidate

## Consequences

- Product users не получают unsafe behavior regression.
- Post-training команда получает focused failure taxonomy.
- Release delay увеличивает pressure на eval и RL owners.

## Evidence packet

- Eval report
- Failure taxonomy
- Model release record
- Rollback target

## Follow-ups

- Добавить tool-use safety eval в blocking gate.
- Собрать adversarial examples для reward/verifier work.
- Повторить release review после targeted fix.

## Review checklist

- Decision можно понять без автора.
- Есть rejected alternatives, а не только выбранный путь.
- Consequences включают downside и operational cost.
- Evidence packet указывает на проверяемые artifacts.
- Follow-ups имеют owner, gate или backlog destination.

## Связанные разделы

- [Decision record schema](../200-protocols-contracts/06-decision-record-schema.md)
- [Governance policies](../230-governance-policies/README.md)
- [Risk register](../130-risk-register/README.md)
- [Implementation backlog](../110-implementation-backlog/README.md)
