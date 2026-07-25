# Product and UX metrics

## Цель

Измерять, помогает ли AI-native product workspace исследователям принимать лучшие решения быстрее и безопаснее.

## Метрики

| Метрика | Интерпретация |
| --- | --- |
| Time to insight | Скорость получения полезного вывода |
| Review burden | Сколько effort требует проверка агента |
| Proposal accept rate | Доля agent proposals, принятых после review |
| Rework rate | Сколько proposals возвращается на итерацию |
| Trace opened before accept | Пользователи проверяют evidence или нет |
| Approval queue latency | Задержка risky actions |
| Trust survey score | Качественный сигнал доверия |
| Unofficial workflow exports | Пользователи обходят продукт |

## Alerts

- Accept without trace review grows.
- Review burden grows while accepted improvements fall.
- Users bypass approval queue with external scripts.
- High trust score but high regression rate: possible false confidence.

## Связанные материалы

- [Product and AI-native UX scorecard](../65-scorecards/05-product-ux-scorecard.md)
- [RISK-007: Product trust failure](../130-risk-register/RISK-007-product-trust-failure.md)
