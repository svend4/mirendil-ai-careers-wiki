# Choose unified experiment object contract

**Status:** Approved

## Context

Agent harness, eval stack, UI и storage используют разные identifiers и lifecycle states для одного experiment.

## Decision

Ввести единый experiment object с stable id, owner, hypothesis, trace links, artifact links, eval links, policy states и decision state.

## Alternatives considered

- Оставить per-system models
- Связать системы только через ad hoc links
- Сначала построить полный workflow engine

## Consequences

- Упрощается navigation между trace, eval и artifacts.
- Нужна migration для existing experiment records.
- Platform API становится dependency для нескольких команд.

## Evidence packet

- Platform integration slice
- Artifact metadata schema
- Agent trace schema
- Eval result schema

## Follow-ups

- Согласовать lifecycle state names с UI.
- Добавить backward compatibility adapter.
- Обновить artifact library templates.

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
