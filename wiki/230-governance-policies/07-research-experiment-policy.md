# Research experiment policy

## Назначение

Политика задает минимум дисциплины для исследовательских экспериментов. Исследование должно оставаться быстрым, но результат должен быть воспроизводимым, объяснимым и пригодным для сравнения с предыдущими runs.

## Минимальный experiment brief

- hypothesis;
- baseline;
- changed variables;
- expected signal;
- dataset/model/config references;
- compute class;
- evaluation method;
- owner;
- decision to make after result.

## Правила запуска

- Exploratory experiments могут быть легкими, но не должны смешиваться с release evidence.
- Каждый experiment получает artifact location.
- Agent-generated experiment должен сохранять trace планирования и действий.
- Failed experiment не удаляется, если он влияет на future decisions.
- Claim о качестве модели должен ссылаться на eval result, а не только на subjective review.

## Правила анализа

- Сравнивайте с baseline, а не только с предыдущим run.
- Отделяйте metric movement от causal explanation.
- Документируйте negative results, если они меняют roadmap.
- Указывайте, какие выводы нельзя делать из данного эксперимента.

## Evidence

- [Experiment brief](../140-artifact-library/01-experiment-brief.md)
- [Eval report](../140-artifact-library/02-eval-report.md)
- [Research trace review](../70-playbooks/05-research-trace-review.md)

## Метрики

- Доля experiments с baseline.
- Доля accepted claims с linked eval result.
- Количество repeated experiments из-за missing evidence.
- Среднее время от result до decision record.
