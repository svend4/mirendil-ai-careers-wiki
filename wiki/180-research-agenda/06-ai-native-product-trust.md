# Research agenda: AI-native product trust

## Главный вопрос

Как сделать AI-native research workspace, где пользователь доверяет системе не потому, что интерфейс выглядит уверенно, а потому что видит evidence, uncertainty, trace и control points?

## Research questions

- Какие элементы trace действительно помогают пользователям принимать решения?
- Как показывать uncertainty без паралича decision-making?
- Когда approval gates воспринимаются как safety, а когда как friction?
- Какие product metrics предсказывают долгосрочное доверие?
- Как предотвращать accept-without-review behavior?

## Candidate experiments

- A/B test trace summary versus full trace versus risk-focused trace.
- Измерить impact uncertainty labels на accept/reject decisions.
- Проверить разные approval queue designs на latency и safety.
- Сравнить user trust survey с фактическим regression rate.

## Metrics

- Trace opened before accept.
- Review burden.
- Proposal accept/rework rate.
- Trust survey score.
- Unofficial workflow exports.

## Связанные материалы

- [Product and UX metrics](../150-metrics-observability/06-product-ux-metrics.md)
- [RISK-007: Product trust failure](../130-risk-register/RISK-007-product-trust-failure.md)
- [Product and AI-native UX interview kit](../160-hiring-interview-kits/05-product-ux-interview-kit.md)
