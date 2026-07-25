# RISK-004: Sandbox escape and unsafe tools

## Описание

AI-generated code, agent tool call или external integration выходит за границы sandbox, получает доступ к secrets, сети, production systems или данным вне scope.

## Indicators

- Запросы к network endpoint вне allowlist.
- Попытки чтения secret paths.
- Неожиданные child processes.
- Tool output содержит данные вне scope.
- Агент пытается обойти approval через alternate tool.

## Mitigations

- Network deny by default.
- Scoped filesystem mounts.
- No direct secrets in sandbox.
- Tool policy engine: allow, deny, require approval.
- Negative tests для sandbox escape и exfiltration.

## Owners

- Primary: Security Platform.
- Reviewers: Infrastructure, Agent Runtime.

## Связанные gates

- [Security review checklist](../85-quality-gates/02-security-review-checklist.md)
- [Agent sandbox incident response](../70-playbooks/03-agent-sandbox-incident-response.md)
