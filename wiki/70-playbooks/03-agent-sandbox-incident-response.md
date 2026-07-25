# Playbook: Agent sandbox incident response

## Назначение

Действовать при подозрении, что агентный запуск, tool call или sandbox execution нарушил policy, пытался выйти за ограничения или мог раскрыть данные.

## Сигналы инцидента

- Попытка доступа к запрещенному пути, secret или network endpoint.
- Неожиданный child process или persistence behavior.
- Подозрение на prompt injection через external content.
- Tool output содержит данные вне scope.
- Agent trace показывает обход approval gate.

## Участники

- Incident commander.
- Security engineer.
- Infrastructure owner.
- Agent Harness owner.
- Data owner, если затронуты данные.

## Первые 15 минут

1. Остановить active run и связанные child jobs.
2. Заморозить workspace, sandbox image, logs и artifacts.
3. Заблокировать egress для environment, если есть network risk.
4. Отозвать временные credentials и tokens.
5. Создать incident record с временем, owner и scope.

## Расследование

- Сопоставить trace агента, shell logs, tool logs и network logs.
- Проверить, был ли доступ к secrets, customer data, model weights или eval sets.
- Определить источник: model behavior, prompt injection, tool bug, sandbox escape, human config error.
- Подготовить containment и remediation plan.

## После инцидента

- Обновить sandbox policy или tool policy.
- Добавить regression test для обнаруженного сценария.
- Обновить approval gates.
- Провести postmortem без обвинений, но с конкретными владельцами действий.

## Связанные страницы

- [Безопасность и sandboxing](../30-cross-cutting/01-security-sandboxing.md)
- [Sandbox для AI-generated code](../50-projects/03-secure-code-sandbox.md)
- [Security review checklist](../85-quality-gates/02-security-review-checklist.md)
