# Scorecard: RL and evaluation

## Связанные роли

- [Post-Training, RL](../20-positions/04-post-training-rl/README.md)
- [Model Evaluation](../20-positions/07-model-evaluation/README.md)
- [RL Environments](../20-positions/11-post-training-rl-environments/README.md)
- [RL Infra](../20-positions/12-post-training-rl-infra/README.md)

## Что оцениваем

Способность строить training/evaluation loop: reward design, verifiers, long-horizon trajectories, regression detection, failure analysis и release gate.

## Уровни

| Уровень | Поведение |
| --- | --- |
| L1 | Объясняет SFT, RL, reward hacking, verifier и regression eval |
| L2 | Проектирует eval suite и reward/verifier strategy для конкретной задачи |
| L3 | Запускает experiment loop, анализирует failures и делает gate decision |
| L4 | Масштабирует RL/eval pipeline, контролирует leakage, Goodhart и cost |

## Practical exercise

Создать eval и verifier design для агента, который должен исправлять ML pipeline bugs. Нужно указать reward, failure modes, leakage risks и release gate.

## Evidence

- Eval catalog.
- Verifier suite design.
- Reward threat model.
- Baseline comparison.
- Failure analysis report.
- Gate decision record.

## Красные флаги

- Eval измеряет только benchmark score и не связан с workflow.
- Нет baseline.
- Verifier легко exploit-ить.
- Reward не проверяется независимым сигналом.
- Failure analysis заменяется общим narrative.

## Связанные материалы

- [Roadmap: Post-training, RL и evaluation](../40-roadmaps/02-rl-evaluation.md)
- [Playbook: Model release eval gate](../70-playbooks/02-model-release-eval-gate.md)
- [Eval readiness checklist](../85-quality-gates/03-eval-readiness-checklist.md)
