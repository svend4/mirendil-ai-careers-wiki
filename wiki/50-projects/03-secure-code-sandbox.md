# Проект: Sandbox для AI-generated code

## Идея

Спроектировать и задокументировать среду, где AI-агент может запускать код, тесты и эксперименты без доступа к лишним данным, секретам и сети.

## Роли

- Security Engineer
- Infrastructure
- Platform
- Agent Harness

## Компоненты

- Runtime isolation: container, microVM или другой уровень изоляции.
- Filesystem policy: read-only inputs, writable workspace, artifact export.
- Network policy: deny by default, allowlist для нужных endpoint-ов.
- Secrets policy: секреты не доступны агентному коду напрямую.
- Audit log: команды, файлы, network attempts, exit codes.

## Минимальный результат

- Threat model sandbox escape и data exfiltration.
- Политика allowed operations.
- Набор негативных тестов.

## Расширения

- Time, CPU, memory, GPU limits.
- Deterministic replay.
- Approval gate для внешней сети.
- Автоматическое уничтожение среды после run.
