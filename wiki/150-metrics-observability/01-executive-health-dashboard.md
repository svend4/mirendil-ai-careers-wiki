# Executive health dashboard

## Цель

Дать руководству и leads короткий обзор здоровья AI R&D платформы без погружения в сырые traces и logs.

## Метрики

| Метрика | Почему важна | Action threshold |
| --- | --- | --- |
| Time to decision | Скорость research loop | Рост 2 недели подряд |
| Accepted improvements / week | Реальный output research | Падение ниже baseline |
| Cost per accepted improvement | Эффективность compute | Рост без quality gain |
| Critical regressions caught pre-release | Польза eval gates | Падение до нуля подозрительно |
| Runs with complete trace | Auditability | Ниже 95% |
| Security policy violations | Risk signal | Любой SEV0/SEV1 |
| Review burden | Product usability | Рост без complexity increase |

## Срезы

- По командам.
- По role cluster.
- По workload class.
- По scenario или customer domain.

## Связанные материалы

- [Research operating cadence](../120-operating-model/04-research-operating-cadence.md)
- [Risk register](../130-risk-register/README.md)
