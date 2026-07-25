# Contract: Tool contract schema

## Назначение

Tool contract schema описывает interface и policy для инструмента, который агент может вызывать.

## Required fields

| Поле | Тип | Описание |
| --- | --- | --- |
| tool_name | string | Имя в registry |
| version | string | Версия контракта |
| owner | string | Команда-владелец |
| purpose | string | Зачем tool существует |
| input_schema | object | Типизированная схема входа |
| output_schema | object | Типизированная схема выхода |
| permissions | object | Filesystem, network, data, compute |
| dangerous_actions | array | Действия, требующие контроля |
| policy | object | Allow/deny/approval rules |
| audit_events | array | Какие события логировать |
| failure_modes | array | Ожидаемые ошибки |
| tests | array | Positive, negative, security tests |

## Policy levels

| Level | Значение |
| --- | --- |
| allow | Агент может вызвать tool без approval |
| require_approval | Нужен human или policy approval |
| deny | Tool недоступен в данном context |

## Invariants

- Tool без owner не добавляется в registry.
- Tool с network write не может быть allow by default.
- Tool, который меняет production state, требует approval.
- Tool output должен быть обработан как untrusted input для следующего шага агента.

## Связанные материалы

- [Tool card](../140-artifact-library/04-tool-card.md)
- [Security review checklist](../85-quality-gates/02-security-review-checklist.md)
