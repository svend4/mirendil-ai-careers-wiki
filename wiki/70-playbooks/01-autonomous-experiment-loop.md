# Playbook: Autonomous experiment loop

## Назначение

Провести AI R&D эксперимент, где агент помогает формулировать гипотезу, запускать проверки, анализировать результаты и предлагать следующий шаг.

## Когда применять

- Нужно проверить model, eval, reward или infrastructure hypothesis.
- Эксперимент может запускать код, tools или compute.
- Требуется trace, чтобы человек мог проверить ход рассуждений.

## Участники

- Владелец эксперимента.
- Agent Harness engineer.
- Evaluation owner.
- Infrastructure owner, если есть compute risk.
- Security owner, если агент получает tools или данные.

## Шаги

1. Сформулировать гипотезу и критерий успеха.
2. Определить budget: время, GPU, стоимость, число попыток.
3. Разделить действия на automatic и approval-required.
4. Запустить агента с tool policy и sandbox policy.
5. Сохранять trace: план, tool calls, outputs, решения, ошибки.
6. Прогнать eval или verifier до принятия результата.
7. Сделать human review trace и итогового отчета.
8. Принять решение: accept, iterate, reject, escalate.

## Артефакты

- Experiment brief.
- Agent trace.
- Eval report.
- Cost report.
- Decision record.

## Стоп-условия

- Агент запрашивает доступ к данным вне scope.
- Стоимость выходит за budget.
- Verifier показывает противоречивый результат.
- Trace содержит необъясненный dangerous action.
- Sandbox или tool возвращает security alert.

## Связанные страницы

- [Agentic AI R&D roadmap](../40-roadmaps/01-agentic-ai-rnd.md)
- [Agentic workflow](../30-cross-cutting/03-agentic-workflow.md)
- [Research trace review](05-research-trace-review.md)
