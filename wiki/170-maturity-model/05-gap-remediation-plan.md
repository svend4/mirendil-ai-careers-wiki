# Gap remediation plan

## Цель

Перевести результаты maturity review в конкретные actions.

## Template

| Поле | Содержание |
| --- | --- |
| Gap ID | Стабильный идентификатор |
| Area | Agent, eval, compute, security, product, operations |
| Current evidence | Что есть сейчас |
| Required evidence | Что нужно для target maturity |
| Action | Что делаем |
| Owner | Кто отвечает |
| Due date | Когда проверить |
| Risk if ignored | Что произойдет без исправления |
| Linked page | Playbook, quality gate, artifact или backlog epic |

## Priority rules

1. Сначала gaps, связанные с security, data leakage и dangerous actions.
2. Потом gaps, которые блокируют eval gates и release decisions.
3. Потом compute cost и reliability gaps.
4. Потом product adoption и UX gaps.
5. Последними cosmetic documentation gaps.

## Связанные материалы

- [Risk register](../130-risk-register/README.md)
- [Quality gates](../85-quality-gates/README.md)
- [Implementation backlog](../110-implementation-backlog/README.md)
