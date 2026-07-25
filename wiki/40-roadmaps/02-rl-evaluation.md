# Roadmap: Post-training, RL и evaluation

## Цель

Собрать рабочее понимание контура, где модель обучается на сложных задачах, получает reward, проходит evaluation и возвращает сигнал в следующий training run.

## Связанные роли

- [Post-Training, RL](../20-positions/04-post-training-rl/README.md)
- [Model Evaluation](../20-positions/07-model-evaluation/README.md)
- [RL Environments](../20-positions/11-post-training-rl-environments/README.md)
- [RL Infra](../20-positions/12-post-training-rl-infra/README.md)

## Базовые знания

- SFT, RL, distillation и reward modeling.
- Verifiers и автоматическая проверка корректности.
- Long-horizon trajectories и credit assignment.
- Reward hacking и adversarial evals.
- Regression detection и release gates.

## Практические задания

1. Описать задачу, где reward нельзя дать только финальным score.
2. Спроектировать verifier для программно проверяемой research-задачи.
3. Собрать таблицу failure modes для reward hacking.
4. Сделать eval gate для новой модели: pass, warn, block.
5. Описать feedback pipeline от human review к reward model.

## Артефакты

- Training recipe.
- Reward design document.
- Verifier suite.
- Eval dashboard spec.
- Regression policy.

## Контрольные вопросы

- Что модель может выучить вместо реальной задачи?
- Какие evals нельзя показывать модели во время обучения?
- Как проверить, что verifier не стал частью exploit surface?
- Когда small-run результат можно масштабировать?
- Как связать eval failure с конкретным training change?
