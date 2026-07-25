# Security review checklist

## Когда применять

- Агент получает новый tool.
- Sandbox получает новый capability.
- Добавляется доступ к данным, secrets, model weights или внешней сети.
- Меняется identity, audit или retention behavior.

## Checklist

- Есть threat model.
- Определены actors и permissions.
- Все secrets изолированы от AI-generated code.
- Network egress ограничен и логируется.
- Dangerous actions требуют approval.
- Audit logs содержат actor, action, target, policy decision и timestamp.
- Есть incident response path.
- Есть негативные тесты и regression tests.

## Blockers

- Нет owner для sensitive asset.
- Нет audit для dangerous action.
- Агент может получить secret напрямую.
- Нет способа остановить или изолировать run.
- Tool может менять production state без approval.
