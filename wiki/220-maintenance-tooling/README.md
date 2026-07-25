# 220-maintenance-tooling

Раздел описывает, как сопровождать эту Markdown-вики как живой репозиторий: проверять ссылки, кодировку, статистику, snapshot-генерацию и review перед изменениями.

## Инструменты

- [Проверка ссылок](01-link-check.md) - `tools/check-wiki-links.ps1`.
- [Проверка кодировки](02-encoding-check.md) - `tools/check-wiki-encoding.ps1`.
- [Статистика вики](03-stats-report.md) - `tools/wiki-stats.ps1`.
- [Workflow генерации](04-generation-workflow.md) - `generate`, `extend`, `rebuild`.
- [Review workflow](05-review-workflow.md) - как принимать новые профессии, задачи и темы.
- [Release checklist](06-release-checklist.md) - минимальный gate перед публикацией.
- [CI integration](07-ci-integration.md) - как подключить проверки к автоматизации.

## Быстрая команда

```powershell
.\tools\check-wiki.ps1
```

Эта команда последовательно запускает проверку внутренних Markdown-ссылок, UTF-8/mojibake-check и отчет статистики.

## Что считается поломкой

- Внутренняя ссылка ведет на несуществующий файл.
- Markdown или PowerShell-файл не декодируется как UTF-8.
- В тексте появились признаки mojibake: кодовые точки U+00D0, U+00D1, U+00E2, U+FFFD.
- После регенерации исчезли новые разделы, профессии, задачи или карты.

## Навигация

- [Главная вики](../README.md)
- [Соглашения](../00-meta/conventions.md)
- [Шаблоны](../90-templates/README.md)
