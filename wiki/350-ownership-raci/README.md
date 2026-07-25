# 350-ownership-raci

Ownership/RACI matrices отвечают на вопрос: кто принимает решение, кто делает работу, кого нужно консультировать и кого достаточно уведомить. В AI R&D это снижает конфликт между research velocity, safety, compute capacity и product readiness.

## Matrices

- [Platform capability RACI](01-platform-capability-raci.md) - Experiment object, artifacts, workflow states, API contracts and platform integrations
- [Model release RACI](02-model-release-raci.md) - Candidate promotion, eval gate, serving readiness, rollback and release decision
- [Agent tooling RACI](03-agent-tooling-raci.md) - Tool contracts, tool registry, policy classes, approvals and trace visibility
- [Data and model assets RACI](04-data-model-assets-raci.md) - Datasets, model weights, checkpoints, lineage, retention and exports
- [Compute capacity RACI](05-compute-capacity-raci.md) - GPU queues, large runs, batch inference, RL rollout capacity and quota policy
- [Incident response RACI](06-incident-response-raci.md) - Security, platform, model, agent, data, infra and product trust incidents

## RACI definitions

- **Responsible** - выполняет работу и готовит evidence.
- **Accountable** - принимает финальное решение и владеет outcome.
- **Consulted** - дает обязательный input до решения.
- **Informed** - должен знать результат, но не блокирует решение.

## Связанные разделы

- [Operating model](../120-operating-model/README.md)
- [Handoff contracts](../340-handoff-contracts/README.md)
- [Operational review cadences](../310-operational-review-cadences/README.md)
- [Decision trees](../330-decision-trees/README.md)
