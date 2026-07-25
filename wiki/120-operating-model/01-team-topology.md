# Team topology

## Цель

Разложить AI R&D платформу на команды так, чтобы ownership не распадался между research, infra, security и product.

## Команды

| Команда | Зона ответственности | Связанные роли |
| --- | --- | --- |
| Agent Runtime | Agent loop, tools, state, trace, recovery | Agent Harness, AI for AI Systems |
| Model Training | Pretraining, post-training, RL recipes | Pretraining, Post-Training RL, RL Infra |
| Evaluation | Evals, verifiers, regression gates, failure analysis | Model Evaluation, RL Environments |
| Compute Platform | GPU clusters, scheduling, inference, cost | Infrastructure, Inference, Kernels |
| Security Platform | Sandbox, IAM, audit, incident response | Security Engineer, Platform |
| Product Workspace | Research UI, trace review, approvals, metrics | Design Engineer, Product Development |

## Interfaces

- Agent Runtime получает tools от Security Platform и Compute Platform.
- Model Training не продвигает checkpoint без Evaluation gate.
- Product Workspace показывает trace и decision records от Agent Runtime.
- Security Platform определяет dangerous actions и audit requirements.
- Compute Platform публикует capacity, cost и reliability signals.

## Антипаттерны

- Evaluation подчинена только model team и не может блокировать release.
- Security подключается после реализации tool access.
- Product UI строится без trace и evidence model.
- Compute allocation не имеет владельца budget и priority.

## Связанные материалы

- [Skill matrix](../60-skill-matrix/README.md)
- [Implementation backlog](../110-implementation-backlog/README.md)
