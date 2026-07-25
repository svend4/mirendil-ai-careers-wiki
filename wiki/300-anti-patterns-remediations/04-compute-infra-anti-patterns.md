# Compute and infrastructure anti-patterns

**Scope:** Infrastructure, Inference, Kernels, RL Infra

## Symptoms

- Expensive runs стартуют без hypothesis и stop condition.
- Optimization accepted по одному synthetic benchmark.
- Queue priority не отражает release/safety/research priority.

## Why it fails

GPU budget тратится на слабый signal, regressions обнаруживаются поздно, а critical workflows конкурируют с exploratory tasks вслепую.

## Remediation

- Требовать compute request для medium/large runs.
- Проверять optimization через representative workloads и quality eval.
- Ввести queue classes, quotas, dashboards и post-run analysis.

## Acceptance gate

Large run имеет owner, expected signal, cost range, stop condition и artifact destination.

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
