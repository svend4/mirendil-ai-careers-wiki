# Training и evaluation loop

## Назначение

Связать training, post-training, RL environments, evals и release decisions в один управляемый цикл.

## Поток

```mermaid
flowchart TD
  H["Гипотеза"] --> R["Training recipe"]
  R --> J["Training / RL run"]
  J --> C["Checkpoint"]
  C --> E["Eval suite"]
  E --> F["Failure analysis"]
  F --> D{"Gate decision"}
  D -->|Pass| P["Promote"]
  D -->|Warn| M["Mitigate"]
  D -->|Block| B["Backlog / new hypothesis"]
  B --> H
  M --> E
```

## Контракты

- Training run должен указывать data version, code version, config, compute profile.
- Checkpoint должен иметь owner, lineage, integrity check и access policy.
- Eval suite должен иметь version, leakage controls и baseline.
- Gate decision должен иметь owner, evidence и rollback path.

## Метрики

- Capability score.
- Regression count.
- Verifier pass rate.
- Cost per accepted improvement.
- Time from hypothesis to decision.
- Failure recurrence rate.

## Риски

- Eval overfitting.
- Reward hacking.
- Неполный lineage.
- Promotion без rollback.
- Игнорирование latency и cost regression.
