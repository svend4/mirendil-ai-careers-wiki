# Release governance policy

## Назначение

Release governance определяет, когда модель, tool, agent workflow, sandbox policy или UI capability можно считать готовыми к внутреннему или внешнему запуску. Цель - выпускать изменения с evidence, rollback и понятным owner.

## Типы release

| Тип | Пример | Gate |
| --- | --- | --- |
| Internal research | новый eval runner, agent workflow для команды | owner review + trace review |
| Internal platform | sandbox policy, tool registry update | security + platform review |
| Model candidate | post-training checkpoint, reward model | eval gate + release record |
| Product-facing | UI capability, external workflow | product + safety + support readiness |
| Production infrastructure | serving, scheduler, storage policy | operational readiness + rollback |

## Минимальный release packet

- owner и release scope;
- affected users или workflows;
- quality evidence;
- security/risk assessment;
- rollback plan;
- monitoring plan;
- known limitations;
- decision record.

## Blocking conditions

- Critical eval regression без accepted exception.
- Нет rollback plan для production-facing изменения.
- Новый side-effect tool без policy class.
- Нет owner для post-release monitoring.
- Security incident остается open и затрагивает release scope.

## Evidence

- [Model release record](../140-artifact-library/03-model-release-record.md)
- [Release eval gate playbook](../70-playbooks/02-model-release-eval-gate.md)
- [Quality gates](../85-quality-gates/README.md)

## Метрики

- Доля releases с полным release packet.
- Количество rollback events.
- Time-to-detect release regression.
- Количество exceptions на release gate.
