# Сквозная тема: evaluation и verifiers

## Почему это сквозная тема

Без evaluation невозможно понять, улучшилась ли модель, агент, reward recipe или продуктовый workflow. Evals должны связывать training, product и safety.

## Участвующие роли

- [Model Evaluation](../20-positions/07-model-evaluation/README.md)
- [Post-Training, RL](../20-positions/04-post-training-rl/README.md)
- [RL Environments](../20-positions/11-post-training-rl-environments/README.md)
- [Product Development](../20-positions/14-product-development/README.md)

## Ключевые вопросы

- Что именно измеряет eval?
- Можно ли результат проверить программно?
- Как избежать Goodhart и leakage?
- Какие failures должны блокировать release?
- Как eval signal возвращается в training decision?

## Минимальные артефакты

- Eval catalog.
- Verifier suite.
- Regression dashboard.
- Release gate policy.
- Failure taxonomy.
