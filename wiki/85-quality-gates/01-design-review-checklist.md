# Design review checklist

## Когда применять

- Новый компонент platform или agent runtime.
- Новая продуктовая абстракция.
- Новый workflow, который связывает несколько ролей.

## Checklist

- Цель описана одним абзацем.
- Есть owner и affected roles.
- Описаны основные сущности и state transitions.
- Есть failure modes и recovery path.
- Определены data и artifact lineage.
- Описаны security boundaries.
- Есть observability и metrics.
- Есть критерии готовности и rollback path.

## Решение

- Approve - можно реализовывать.
- Approve with changes - можно начинать после правок.
- Rework - требуется новый design pass.
- Reject - решение не соответствует архитектурным принципам.
