# Research operating cadence

## Цель

Задать ритм работы, в котором AI R&D эксперименты быстро двигаются, но не теряют воспроизводимость, eval discipline и safety review.

## Еженедельный цикл

| День | Практика | Артефакт |
| --- | --- | --- |
| Понедельник | Hypothesis review | Список approved experiments |
| Вторник-среда | Agent-assisted experiments | Agent traces, eval runs, cost logs |
| Четверг | Failure analysis | Failure clusters, decision candidates |
| Пятница | Gate review | Pass, warn, block decisions |

## Постоянные обзоры

- Daily compute health: queue, cost, failures, runaway jobs.
- Twice-weekly eval regression review.
- Weekly security review для новых tools и sandbox capabilities.
- Monthly architecture review.
- Monthly risk register review.

## Метрики ритма

- Time from hypothesis to decision.
- Accepted improvements per week.
- Regression recurrence rate.
- Cost per accepted improvement.
- Percentage of runs with complete trace.
- Percentage of blocked releases caught by eval gate.

## Связанные материалы

- [Autonomous experiment loop](../70-playbooks/01-autonomous-experiment-loop.md)
- [Metrics in compute scorecard](../65-scorecards/03-compute-scorecard.md)
