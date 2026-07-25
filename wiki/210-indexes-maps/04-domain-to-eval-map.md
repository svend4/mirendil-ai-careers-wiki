# Domain to eval map

| Domain | Eval axes | Required artifacts |
| --- | --- | --- |
| [Life sciences](../190-domain-adaptation-kits/01-life-sciences-kit.md) | Scientific plausibility, citation, hallucination, domain constraints | Dataset card, eval report, threat model |
| [Materials science](../190-domain-adaptation-kits/02-materials-science-kit.md) | Physical constraints, reproducibility, novelty, cost per useful candidate | Compute request, experiment brief, eval report |
| [Coding agents](../190-domain-adaptation-kits/03-coding-agents-kit.md) | Patch correctness, tests, long-horizon debugging, tool safety | Tool card, eval report, model release record |
| [Enterprise legal](../190-domain-adaptation-kits/04-enterprise-legal-kit.md) | Citation quality, refusal correctness, tenant isolation, uncertainty | Threat model, dataset card, incident report |
| [Robotics](../190-domain-adaptation-kits/05-robotics-kit.md) | Robustness, safety, sim-to-real, reward hacking resistance | Experiment brief, compute request, threat model |

## Правило

Domain onboarding не начинается без domain eval axes и dataset policy.
