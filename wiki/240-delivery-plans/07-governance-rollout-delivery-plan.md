# Governance rollout delivery plan

## Цель

Внедрить governance без бюрократического торможения research velocity: policies должны быть связаны с tools, gates, audit events и ownership, а не существовать отдельно от платформы.

## Фаза 1: policy baseline

- Назначить owners для data, tools, compute, model release и security.
- Принять минимальные политики для data, tools, approval и compute.
- Определить blocking gates и advisory gates.
- Добавить exception process.

## Фаза 2: platform enforcement

- Встроить policy class в tool registry.
- Добавить approval state в agent harness.
- Логировать audit events для sensitive actions.
- Связать risk register с control map.

## Фаза 3: governance operations

- Проводить weekly review open exceptions.
- Измерять approval latency и policy denials.
- Пересматривать policies после incidents и repeated exceptions.
- Публиковать monthly governance health report.

## Acceptance criteria

- Каждый high-risk action имеет owner и enforcement path.
- Exception не может быть бессрочным.
- Audit event достаточно подробный для расследования.
- Команда знает, какой gate блокирует release и почему.

## Связанные файлы

- [Governance policies](../230-governance-policies/README.md)
- [Governance audit lineage backlog](../110-implementation-backlog/06-governance-audit-lineage.md)
- [Risk to control map](../210-indexes-maps/02-risk-to-control-map.md)
- [Audit event schema](../200-protocols-contracts/04-audit-event-schema.md)
