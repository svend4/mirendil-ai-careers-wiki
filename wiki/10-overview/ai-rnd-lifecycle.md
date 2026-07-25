# Жизненный цикл AI R&D

1. **Постановка цели** - человек или агент формулирует исследовательскую задачу.
2. **Планирование** - agent harness разбивает цель на шаги, tools и проверки.
3. **Исполнение** - sandbox запускает код, environments и внешние инструменты.
4. **Обучение** - pretraining или post-training stack проводит runs.
5. **Evaluation** - verifiers и eval frameworks измеряют поведение модели.
6. **Анализ** - агент и исследователь изучают traces, failures и метрики.
7. **Итерация** - система решает, что менять в данных, reward, архитектуре, inference или product.

Ключевой риск: чем автономнее цикл, тем важнее security, auditability, eval quality и human approval gates.

