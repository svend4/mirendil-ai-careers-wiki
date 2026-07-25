# Компоненты системы

## Верхнеуровневая схема

```mermaid
flowchart LR
  U["Исследователь"] --> P["Product UI"]
  P --> A["Agent Runtime"]
  A --> T["Tool Registry"]
  A --> S["Sandbox Runtime"]
  A --> M["Memory и State Store"]
  S --> C["Compute Platform"]
  C --> TR["Training Stack"]
  TR --> E["Evaluation Stack"]
  E --> R["Decision Records"]
  R --> P
  G["Governance Layer"] --> A
  G --> S
  G --> C
  D["Data и Artifact Store"] --> TR
  TR --> D
  E --> D
```

## Компоненты

- Product UI - рабочая поверхность исследователя.
- Agent Runtime - цикл планирования, tool calls, state и trace.
- Tool Registry - контракт и policy для внешних действий.
- Sandbox Runtime - изоляция AI-generated code.
- Compute Platform - CPU/GPU clusters, scheduler, quotas.
- Training Stack - pretraining, post-training, RL.
- Evaluation Stack - evals, verifiers, regression detection.
- Data и Artifact Store - datasets, checkpoints, traces, reports.
- Governance Layer - identity, audit, approval, retention.

## Инварианты

- Нет действия без actor.
- Нет artifact без lineage.
- Нет release без eval gate.
- Нет tool call без policy.
- Нет dangerous action без approval или explicit allow rule.
