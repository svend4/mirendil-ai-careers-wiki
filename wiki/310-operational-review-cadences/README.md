# 310-operational-review-cadences

Раздел описывает регулярные review cadences для AI R&D платформы. Это операционная связка между evidence packets, dashboards, risk register, delivery plans и decision records.

## Reviews

- [Weekly research review](01-weekly-research-review.md) - Еженедельно, 45-60 минут
- [Model release review](02-model-release-review.md) - Перед каждым internal или product-facing model release
- [Agent behavior review](03-agent-behavior-review.md) - Еженедельно для active agent workflows, чаще при incidents
- [Security and governance review](04-security-governance-review.md) - Еженедельно для exceptions, ежемесячно для policy health
- [Compute capacity review](05-compute-capacity-review.md) - Еженедельно, плюс при large run requests
- [Product adoption review](06-product-adoption-review.md) - Раз в 1-2 недели для active internal beta

## Принципы

- Review заканчивается decision, owner и next action, а не только обсуждением.
- На review приходят с evidence packet или dashboard, а не с устным статусом.
- Если decision откладывается, причина и missing evidence фиксируются явно.
- Повторяющийся blocker становится backlog item, policy update или anti-pattern remediation.

## Связанные разделы

- [Evidence packets](../290-evidence-packets/README.md)
- [Dashboard examples](../320-dashboard-examples/README.md)
- [Decision record examples](../280-decision-record-examples/README.md)
- [Operating model](../120-operating-model/README.md)
