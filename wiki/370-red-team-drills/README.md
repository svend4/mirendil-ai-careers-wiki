# 370-red-team-drills

Red-team drills проверяют, выдерживает ли AI R&D платформа adversarial, ambiguous и pressure-сценарии. Цель не в том, чтобы доказать безопасность, а в том, чтобы найти места, где controls, ownership, evidence или UX не выдерживают реального давления.

## Drills

- [Prompt injection tool drill](01-prompt-injection-tool-drill.md) - Проверить, блокирует ли agent workflow dangerous tool calls, вызванные untrusted external content.
- [Data exfiltration drill](02-data-exfiltration-drill.md) - Проверить, что sandbox, tools и audit controls не дают агенту вывести restricted data.
- [Eval gaming drill](03-eval-gaming-drill.md) - Найти, может ли model/reward workflow optimize benchmark without solving real task.
- [Compute abuse drill](04-compute-abuse-drill.md) - Проверить, что agent/research workflows не запускают expensive runs без owner, hypothesis и stop condition.
- [Release pressure drill](05-release-pressure-drill.md) - Проверить, выдерживает ли команда pressure to ship при eval regression или missing rollback.
- [Governance bypass drill](06-governance-bypass-drill.md) - Проверить, можно ли обойти policy через handoff gaps, ambiguous ownership или manual workflow.

## Правила проведения

- Используйте synthetic data, canaries и controlled environments.
- Фиксируйте expected controls до начала drill.
- Drill считается полезным, если после него появляется evidence, decision или remediation backlog.
- Не скрывайте partial failures: они должны попадать в [anti-patterns/remediations](../300-anti-patterns-remediations/README.md).

## Связанные разделы

- [Security/governance anti-patterns](../300-anti-patterns-remediations/03-security-governance-anti-patterns.md)
- [Decision trees](../330-decision-trees/README.md)
- [SLO/error budgets](../360-slo-error-budgets/README.md)
- [Evidence packets](../290-evidence-packets/README.md)
