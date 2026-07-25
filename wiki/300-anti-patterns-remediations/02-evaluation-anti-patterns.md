# Evaluation anti-patterns

**Scope:** Model Evaluation, Post-Training RL, Product

## Symptoms

- Один benchmark используется как release evidence.
- Thresholds выбраны после просмотра результата.
- Failure examples не связаны с owners или backlog.

## Why it fails

Eval перестает быть decision tool и превращается в post-hoc justification; regressions остаются незамеченными до product impact.

## Remediation

- Фиксировать baseline, thresholds и task taxonomy до candidate review.
- Разделять quality, safety, tool-use, cost и UX evals.
- Связывать failed clusters с owners, backlog и release decision.

## Acceptance gate

Release candidate имеет eval bundle, threshold rationale и known limitations.

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
