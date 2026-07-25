# 340-handoff-contracts

Handoff contracts описывают, что одна роль или команда должна передать другой, чтобы работа продолжалась без потери контекста. Это особенно важно для AI R&D, где experiments, evals, security, platform, product и infrastructure постоянно зависят друг от друга.

## Contracts

- [Research to evaluation handoff](01-research-to-eval-handoff.md) - Research / Post-training / AI for AI Systems -> Model Evaluation
- [Evaluation to release handoff](02-eval-to-release-handoff.md) - Model Evaluation -> Release owner / Product / Inference
- [Agent harness to security handoff](03-agent-to-security-handoff.md) - Agent Harness / Platform -> Security Engineer
- [Platform to product handoff](04-platform-to-product-handoff.md) - Platform / Agent Harness / Eval -> Product Development / Design Engineer
- [Infrastructure to research handoff](05-infra-to-research-handoff.md) - Infrastructure / RL Infra / Inference -> Research / Post-training / Evaluation
- [Hiring to onboarding handoff](06-hiring-to-onboarding-handoff.md) - Hiring panel / Interview loop -> Manager / Mentor / Onboarding owner

## Правило handoff

Хороший handoff передает не только результат, но и decision needed, evidence, limitations, risks и owner следующего шага.

## Связанные разделы

- [Role practical assignments](../250-role-practical-assignments/README.md)
- [Evidence packets](../290-evidence-packets/README.md)
- [Operating model](../120-operating-model/README.md)
- [Indexes/maps](../210-indexes-maps/README.md)
