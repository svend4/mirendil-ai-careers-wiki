# Security and governance anti-patterns

**Scope:** Security, Platform, Governance

## Symptoms

- Policy существует в Markdown, но не встроена в tools.
- Exceptions бессрочные или без owner.
- Audit events не содержат decision context.

## Why it fails

Команда думает, что governance есть, но dangerous actions фактически не контролируются и не расследуются.

## Remediation

- Связать policy classes с tool registry и approval states.
- Ввести expiration, owner и closure criteria для exceptions.
- Расширить audit schema context: actor, purpose, policy result, artifact links.

## Acceptance gate

High-risk action имеет enforcement path, approval или explicit denial.

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
