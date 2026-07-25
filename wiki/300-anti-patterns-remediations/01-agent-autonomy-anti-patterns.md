# Agent autonomy anti-patterns

**Scope:** Agent Harness, Platform, Product

## Symptoms

- Агент выполняет tool calls без понятного stop reason.
- Trace есть, но reviewer не понимает decision path.
- Policy denial превращается в generic failure.

## Why it fails

Автономия выглядит полезной, но система неуправляема: нельзя объяснить действия, восстановить state или безопасно продолжить workflow.

## Remediation

- Ввести explicit state machine: plan, act, observe, reflect, approval, stop.
- Сделать trace review обязательным для long-horizon tasks.
- Добавить stop reasons, budget limits и recovery states.

## Acceptance gate

Ни один side-effect action не исполняется без policy check и trace step.

## Review prompts

- Какой evidence показывает, что anti-pattern действительно устранен?
- Какой owner отвечает за regression prevention?
- Какой metric или alert покажет повторение проблемы?
- Нужно ли открыть risk, backlog item или decision record?

## Связанные разделы

- [Risk register](../130-risk-register/README.md)
- [Quality gates](../85-quality-gates/README.md)
- [Governance policies](../230-governance-policies/README.md)
- [Evidence packets](../290-evidence-packets/README.md)
