# Model asset policy

## Назначение

Модельные активы - веса, checkpoints, tokenizer, training recipes, eval results, reward models, adapters и deployment configs. Они должны управляться как чувствительные активы, потому что потеря контроля над ними ведет к утечке IP, regression risk и невозможности rollback.

## Классы активов

| Актив | Минимальный контроль |
| --- | --- |
| Base checkpoint | owner, storage ACL, checksum, lineage |
| Post-training checkpoint | training recipe, eval bundle, release status |
| Reward model | reward spec, calibration report, known failure modes |
| Deployment config | approved model version, rollback target, traffic policy |
| Model artifact export | expiration, recipient, audit event |

## Правила хранения

- Checkpoint не считается usable без checksum, owner и lineage.
- Production candidate не продвигается без eval bundle и release record.
- Доступ к model weights выдается по роли и цели, а не по общему team membership.
- External export требует owner approval и записи в audit log.
- Deprecated checkpoint получает status, retention date и rollback decision.

## Release gates

- Eval regression gate пройден.
- Security review для новых tool-calling или autonomous capabilities завершен.
- Rollback target определен и доступен.
- Known limitations описаны в release record.

## Evidence

- [Model release record](../140-artifact-library/03-model-release-record.md)
- [Eval result schema](../200-protocols-contracts/03-eval-result-schema.md)
- [Release governance policy](06-release-governance-policy.md)

## Метрики

- Доля checkpoints с полным lineage.
- Число model exports за период.
- Количество production candidates без rollback target.
- Время между eval failure и release decision.
