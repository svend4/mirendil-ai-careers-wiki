# Eval readiness checklist

## Когда применять

- Перед promotion модели или checkpoint.
- Перед изменением reward recipe.
- Перед включением новой agent capability.
- Перед release product feature, где model behavior влияет на пользователя.

## Checklist

- Есть baseline.
- Eval suite покрывает реальные workflow, а не только benchmark score.
- Есть regression tests.
- Проверены leakage и contamination risks.
- Verifiers имеют negative tests.
- Failure analysis сохранен и доступен.
- Latency, cost и reliability не ухудшились критически.
- Gate decision записан: pass, warn или block.

## Blockers

- Eval не воспроизводится.
- Нет baseline comparison.
- Critical regression не объяснена.
- Verifier можно легко exploit-ить.
- Улучшение есть только на одном узком benchmark.
