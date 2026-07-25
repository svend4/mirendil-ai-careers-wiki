# RL training anti-patterns

**Scope:** Post-Training RL, RL Environments, RL Infra

## Symptoms

- Reward повышается, но human review видит деградацию.
- Environment содержит shortcut к success.
- Rollout и trainer используют несогласованные версии artifacts.

## Why it fails

Модель учит loopholes, verifier становится target для exploitation, expensive runs дают misleading signal.

## Remediation

- Добавить adversarial environment probes и verifier failure analysis.
- Фиксировать environment state/action constraints и invalid actions.
- Версионировать rollout, reward, trainer и dataset artifacts.

## Acceptance gate

Training-ready environment имеет reward design, determinism report и loophole check.

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
