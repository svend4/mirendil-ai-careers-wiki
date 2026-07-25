# 80-reference-architecture

Reference architecture описывает целевую систему AI R&D платформы как набор связанных компонентов, потоков данных и границ безопасности.

## Страницы

- [Компоненты системы](01-system-components.md)
- [Agent runtime](02-agent-runtime.md)
- [Training и evaluation loop](03-training-evaluation-loop.md)
- [Data и artifact lineage](04-data-artifact-lineage.md)
- [Security boundaries](05-security-boundaries.md)

## Принцип

Архитектура должна поддерживать автономность, но не терять управляемость: каждое действие агента, training run, eval result и artifact должны иметь owner, trace, policy и способ проверки.
