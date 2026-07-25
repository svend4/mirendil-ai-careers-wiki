# Product and UX anti-patterns

**Scope:** Design Engineer, Product Development, Platform

## Symptoms

- UI скрывает blocked/risky states.
- Approval request требует читать raw logs.
- Product metrics измеряют clicks, но не research outcome.

## Why it fails

Пользователь доверяет интерфейсу больше, чем evidence; опасные или неполные действия выглядят нормальными.

## Remediation

- Показывать trace summary, evidence links и policy reason в primary flow.
- Делать approval card с impact, risk, rollback и context.
- Выбирать metrics: time-to-decision, review quality, trust, safe automation rate.

## Acceptance gate

Approver может принять approve/deny/request-info decision без ручного поиска контекста.

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
