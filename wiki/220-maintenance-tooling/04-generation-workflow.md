# Workflow генерации

## Назначение

Вики поддерживается как набор Markdown-файлов и как воспроизводимый snapshot. Это позволяет пересоздать структуру после массовых изменений и не потерять расширенные разделы.

## Основные скрипты

- [generate-mirendil-wiki.ps1](../../tools/generate-mirendil-wiki.ps1) - строит базовую вики по позициям и вызывает extension snapshot.
- [extend-mirendil-wiki.ps1](../../tools/extend-mirendil-wiki.ps1) - записывает расширенные разделы из base64 snapshot.
- [rebuild-extend-mirendil-wiki.ps1](../../tools/rebuild-extend-mirendil-wiki.ps1) - пересобирает extension snapshot из текущих Markdown-файлов.

## Правильный порядок после добавления раздела

1. Создайте или измените Markdown-файлы.
2. Добавьте новый раздел в `$includeDirs` внутри `tools/rebuild-extend-mirendil-wiki.ps1`.
3. Запустите пересборку snapshot:

```powershell
.\tools\rebuild-extend-mirendil-wiki.ps1
```

4. Проверьте, что генератор воспроизводит изменения:

```powershell
.\tools\generate-mirendil-wiki.ps1
```

5. Запустите проверки:

```powershell
.\tools\check-wiki.ps1
```

## Что нельзя делать

- Не редактируйте `extend-mirendil-wiki.ps1` вручную как обычный текстовый документ: он является сгенерированным snapshot.
- Не добавляйте новый wiki-раздел без обновления `$includeDirs`, иначе он исчезнет при пересборке.
- Не меняйте базовый генератор для каждой маленькой wiki-страницы, если страницу можно хранить в extension snapshot.

## Связанные файлы

- [Общая проверка вики](../../tools/check-wiki.ps1)
- [Статистика вики](03-stats-report.md)
