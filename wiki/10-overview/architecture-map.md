# Карта архитектуры

`mermaid
flowchart TD
  A["Идея исследования"] --> B["Agent Harness"]
  B --> C["Tools и Sandbox"]
  C --> D["Эксперименты и RL Environments"]
  D --> E["Training: Pretraining / Post-training"]
  E --> F["Evaluation и Verifiers"]
  F --> G["Inference и Product"]
  G --> H["Feedback и новые гипотезы"]
  H --> B

  I["Infrastructure: GPU, storage, scheduling"] --> C
  I --> E
  I --> G
  J["Security и Platform Governance"] --> B
  J --> C
  J --> I
`

Главный контур - замкнутый цикл AI R&D: гипотеза, агентное исполнение, эксперимент, обучение, evaluation, feedback, новая гипотеза.

