# Tool access policy

## Назначение

Политика описывает, какие tools могут вызывать агенты и люди, какие действия требуют approval, а какие полностью запрещены. Главная цель - не дать agent workflow незаметно выполнять опасные операции через легитимные API.

## Классы tools

| Класс | Примеры | Правило |
| --- | --- | --- |
| Read-only | поиск по docs, чтение metrics, просмотр logs | разрешено с audit для sensitive источников |
| Workspace write | создание branch, изменение Markdown, запись experiment artifacts | разрешено в scoped workspace |
| Expensive | запуск GPU training, large eval, batch inference | quota и budget approval |
| External side effect | email, ticket update, deployment, cloud resource change | human approval |
| Restricted | secrets, production database writes, customer data export | только explicit grant и breakglass process |

## Обязательные controls

- Каждый tool имеет contract, owner, allowed actions и failure modes.
- Tool call должен оставлять trace: actor, input summary, output summary, decision context.
- Агент не получает wildcard-доступ к tools.
- Dangerous action должен иметь dry-run или preview, если это технически возможно.
- Tool output из внешних источников считается untrusted input для следующего шага агента.

## Approval gates

- Новый tool с side effects - security review и owner approval.
- Расширение permissions существующего tool - diff permissions + risk review.
- Production action от агента - human approval, кроме заранее allowlisted low-risk actions.

## Evidence

- [Tool contract schema](../200-protocols-contracts/02-tool-contract-schema.md)
- [Tool card](../140-artifact-library/04-tool-card.md)
- [Human approval policy](04-human-approval-policy.md)

## Метрики

- Доля tools с owner и explicit permission class.
- Количество blocked tool calls по policy.
- Количество side-effect actions без approval.
- Среднее время review нового tool.
