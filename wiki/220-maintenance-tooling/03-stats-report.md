# Статистика вики

## Назначение

Статистика показывает, растет ли вики структурно: сколько есть разделов, Markdown-файлов, профессий, задач, тем, подтем и ссылок. Это быстрый health check после очередного расширения.

## Команды

Обычный вывод:

```powershell
.\tools\wiki-stats.ps1
```

Markdown-таблица для вставки в отчет:

```powershell
.\tools\wiki-stats.ps1 -AsMarkdown
```

## Метрики

- `Wiki sections` - количество верхнеуровневых разделов внутри `wiki`.
- `Markdown files` - корневой `README.md` и все Markdown-файлы внутри `wiki`.
- `Position folders` - публичные роли в `wiki/20-positions`.
- `Task pages` - отдельные страницы задач.
- `Topic pages` - отдельные страницы тем.
- `Subtopic pages` - отдельные страницы подтем.
- `Internal markdown links` - локальные ссылки.
- `External markdown links` - внешние источники и job links.
- `PowerShell tools` - служебные скрипты в `tools`.

## Как использовать

- Перед большим изменением сохраните baseline статистики.
- После изменения сравните рост ожидаемых счетчиков.
- Если число Markdown-файлов резко уменьшилось после генерации, проверьте `tools/rebuild-extend-mirendil-wiki.ps1`.

## Связанные файлы

- [Скрипт статистики](../../tools/wiki-stats.ps1)
- [Release checklist](06-release-checklist.md)
