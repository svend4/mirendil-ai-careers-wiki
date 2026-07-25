# Проект: Evaluation и verifier suite

## Идея

Собрать набор eval-задач и verifiers для проверки модели на AI R&D workflow: код, анализ логов, гипотезы, debugging и выбор следующего эксперимента.

## Роли

- Model Evaluation
- Post-Training, RL
- RL Environments
- AI for AI Systems

## Компоненты

- Каталог capability axes.
- Набор задач с expected behavior.
- Автоматические verifiers для программно проверяемых результатов.
- Human review workflow для неоднозначных случаев.
- Regression dashboard.

## Минимальный результат

- 20 eval-задач, разделенных по capability axes.
- 5 verifiers с негативными тестами.
- Правило release gate: pass, warn, block.

## Расширения

- Adversarial evals против reward hacking.
- Кластеризация failures агентом.
- Связь eval failures с training data или reward recipe.
