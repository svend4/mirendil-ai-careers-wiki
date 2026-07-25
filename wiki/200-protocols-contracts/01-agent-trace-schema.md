# Contract: Agent trace schema

## Назначение

Agent trace schema описывает минимальный журнал выполнения агентного workflow: что агент планировал, какие tools вызвал, что увидел, какие решения принял и где потребовалось approval.

## Required fields

| Поле | Тип | Описание |
| --- | --- | --- |
| trace_id | string | Стабильный идентификатор trace |
| task_id | string | Связанная задача или experiment |
| actor_id | string | Агент, пользователь или delegated identity |
| owner | string | Человек или команда, отвечающие за run |
| started_at | timestamp | Начало выполнения |
| ended_at | timestamp/null | Конец выполнения |
| policy_context | object | Ограничения, budget, permissions |
| steps | array | Список шагов |
| artifacts | array | Созданные или использованные артефакты |
| final_decision | object/null | Итоговое решение |

## Step fields

| Поле | Тип | Описание |
| --- | --- | --- |
| step_id | string | Идентификатор шага |
| type | enum | plan, tool_call, observation, reflection, approval, decision, error |
| timestamp | timestamp | Время события |
| summary | string | Короткое описание |
| inputs | object | Входы шага |
| outputs | object | Выходы шага |
| policy_decision | enum/null | allow, deny, require_approval |
| linked_artifacts | array | Связанные artifacts |

## Invariants

- Dangerous action не может существовать без policy_decision.
- Tool call должен ссылаться на tool contract version.
- Final decision должен ссылаться на evidence: eval, trace step, artifact или human approval.
- Trace должен быть пригоден для replay или review.

## Связанные материалы

- [Research trace review](../70-playbooks/05-research-trace-review.md)
- [Agent runtime metrics](../150-metrics-observability/02-agent-runtime-metrics.md)
