# 290-evidence-packets

Evidence packet - это проверяемый набор артефактов после lab, release, incident, experiment или policy rollout. Он отвечает на вопрос: какие доказательства остаются после работы и кто может принять решение по ним.

## Пакеты

- [Autonomous experiment evidence packet](01-autonomous-experiment-evidence-packet.md) - Зафиксировать полный путь от hypothesis до decision после agent-run experiment.
- [Model release evidence packet](02-model-release-evidence-packet.md) - Собрать evidence для ship/block/exception решения по model candidate.
- [Sandbox incident evidence packet](03-sandbox-incident-evidence-packet.md) - Собрать расследование agent/sandbox incident в воспроизводимый пакет.
- [Inference optimization evidence packet](04-inference-optimization-evidence-packet.md) - Документировать optimization change так, чтобы speedup не скрывал quality или reliability regression.
- [RL environment evidence packet](05-rl-environment-evidence-packet.md) - Проверить, что RL environment готов к training и не поощряет obvious reward hacking.
- [Governance rollout evidence packet](06-governance-rollout-evidence-packet.md) - Показать, что governance policies встроены в workflow, tools и audit, а не лежат отдельным документом.

## Общий стандарт

- Пакет должен иметь owner, scope и decision needed.
- Каждый claim должен ссылаться на artifact, eval, trace, metric или policy.
- В пакете должны быть risks, assumptions и open questions.
- Пакет должен завершаться decision record или follow-up backlog.
- Если evidence неполный, это фиксируется явно, а не скрывается в summary.

## Связанные разделы

- [Capstone labs](../270-capstone-labs/README.md)
- [Decision record examples](../280-decision-record-examples/README.md)
- [Artifact library](../140-artifact-library/README.md)
- [Quality gates](../85-quality-gates/README.md)
