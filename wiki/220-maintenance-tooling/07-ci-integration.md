# CI integration

## Назначение

CI должен запускать те же проверки, что и локальный maintainer. Минимальная цель - не пропускать broken links, поврежденную кодировку и случайную потерю структуры после генерации.

## Минимальный pipeline

```powershell
.\tools\check-wiki.ps1
```

## Расширенный pipeline

```powershell
.\tools\rebuild-extend-mirendil-wiki.ps1
.\tools\generate-mirendil-wiki.ps1
.\tools\check-wiki.ps1
```

Расширенный pipeline подходит для веток, где изменяются wiki-разделы или генератор.

## Политика failure

- Broken internal link - блокирует merge.
- Encoding issue - блокирует merge.
- Потеря файлов после генерации - блокирует merge.
- Изменение статистики само по себе не блокирует merge, но должно быть объяснимо.

## Что логировать

- Вывод `check-wiki.ps1`.
- Markdown-таблицу из `wiki-stats.ps1 -AsMarkdown`.
- Список измененных файлов.

## Связанные файлы

- [Общая проверка вики](../../tools/check-wiki.ps1)
- [Статистика вики](../../tools/wiki-stats.ps1)
- [Release checklist](06-release-checklist.md)
