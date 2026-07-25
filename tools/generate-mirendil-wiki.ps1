$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $PSScriptRoot
$snapshotDate = "2026-07-01"

function Write-WikiFile {
    param(
        [Parameter(Mandatory = $true)][string]$Path,
        [Parameter(Mandatory = $true)][string]$Content
    )

    $directory = Split-Path -Parent $Path
    if ($directory -and -not (Test-Path -LiteralPath $directory)) {
        New-Item -ItemType Directory -Force -Path $directory | Out-Null
    }

    $normalized = ($Content.Trim() + "`n")
    Set-Content -LiteralPath $Path -Value $normalized -Encoding utf8
}

function Join-WikiPath {
    param([string[]]$Parts)
    return Join-Path -Path $repoRoot -ChildPath ($Parts -join [IO.Path]::DirectorySeparatorChar)
}

function MdList {
    param([string[]]$Items)
    return (($Items | ForEach-Object { "- $_" }) -join "`n")
}

function TaskLinkList {
    param(
        $Tasks,
        [string]$Prefix = "10-zadachi/"
    )
    $rows = @()
    for ($i = 0; $i -lt $Tasks.Count; $i++) {
        $num = "{0:D2}" -f ($i + 1)
        $task = $Tasks[$i]
        $rows += "- [$($task.title)]($Prefix$num-$($task.slug)/README.md)"
    }
    return ($rows -join "`n")
}

function TopicLinkList {
    param(
        $Topics,
        [string]$Prefix = "20-temy/"
    )
    $rows = @()
    for ($i = 0; $i -lt $Topics.Count; $i++) {
        $num = "{0:D2}" -f ($i + 1)
        $topic = $Topics[$i]
        $rows += "- [$($topic.title)]($Prefix$num-$($topic.slug)/README.md)"
    }
    return ($rows -join "`n")
}

function RelativeRoleLink {
    param($Role)
    return "$($Role.id)-$($Role.slug)/README.md"
}

$rolesJson = @'
[
  {
    "id": "01",
    "slug": "security-engineer",
    "title": "Member of Technical Staff, Security Engineer",
    "ruTitle": "Инженер по безопасности AI R&D",
    "domain": "Безопасность облака, ML-систем, данных, весов моделей и агентных workflow.",
    "source": "https://jobs.ashbyhq.com/mirendil/036aed06-d6b4-48b6-9e49-2b6d7f26b3fa",
    "published": "2026-06-24",
    "tasks": [
      {
        "slug": "model-weights-data-protection",
        "title": "Защитить веса моделей, датасеты и данные клиентов",
        "goal": "Построить слой контроля доступа и аудита для чувствительных активов AI-лаборатории.",
        "work": ["Описать классы активов: веса, training data, customer data, secrets.", "Спроектировать IAM, ротацию ключей и политику минимальных прав.", "Добавить аудит доступа, экспорт событий и процедуру incident response."],
        "artifacts": ["Матрица активов и владельцев.", "Политика доступа.", "План реагирования на инциденты."],
        "risks": ["Утечка весов модели.", "Непрозрачный доступ агентов к данным.", "Смешивание tenant-данных в общей инфраструктуре."]
      },
      {
        "slug": "secure-sandboxed-execution",
        "title": "Построить безопасный sandbox для AI-generated code",
        "goal": "Дать агентам возможность запускать код без прямого риска для инфраструктуры и данных.",
        "work": ["Выбрать границы изоляции: контейнер, microVM, namespace, network policy.", "Ограничить файловую систему, сеть, секреты, CPU/GPU и время выполнения.", "Добавить журналирование команд, артефактов и внешних запросов."],
        "artifacts": ["Спецификация sandbox.", "Набор негативных тестов.", "Runbook для расследований."],
        "risks": ["Escape из sandbox.", "Exfiltration через сеть.", "Скрытое сохранение вредного состояния между запусками."]
      },
      {
        "slug": "agent-tool-threat-model",
        "title": "Смоделировать угрозы для агентных tools и внешних систем",
        "goal": "Понять, какие действия агент может выполнить через инструменты, API и интеграции.",
        "work": ["Составить список tools и полномочий.", "Разделить действия на безопасные, опасные и требующие подтверждения.", "Ввести policy engine для блокировки и human approval."],
        "artifacts": ["Threat model.", "Политики tool access.", "Таблица approval-gates."],
        "risks": ["Prompt injection через внешние данные.", "Непреднамеренные операции в production.", "Компрометация секретов через tool output."]
      }
    ],
    "topics": [
      {"slug": "sandbox-security", "title": "Безопасность sandbox-сред", "subtopics": ["Границы изоляции и escape-модели", "Сетевые политики и egress-control"]},
      {"slug": "model-asset-security", "title": "Защита модельных активов", "subtopics": ["Вес модели как чувствительный актив", "Аудит доступа к training data"]}
    ]
  },
  {
    "id": "02",
    "slug": "agent-harness",
    "title": "Member of Technical Staff, Agent Harness",
    "ruTitle": "Инженер агентного harness",
    "domain": "Agent loop, инструменты, память, состояние, multi-agent orchestration и надежность долгих задач.",
    "source": "https://jobs.ashbyhq.com/mirendil/0984fce2-0aa9-42ff-983d-eabb09c41d89",
    "published": "2026-06-24",
    "tasks": [
      {
        "slug": "agent-loop-architecture",
        "title": "Спроектировать agent loop и слой инструментов",
        "goal": "Собрать цикл планирования, действия, наблюдения и рефлексии для AI R&D задач.",
        "work": ["Описать состояния agent loop.", "Определить tool API, схемы вызовов и ошибки.", "Ввести prompt scaffolding и capability primitives."],
        "artifacts": ["Диаграмма agent loop.", "Tool contract.", "Набор примеров задач."],
        "risks": ["Зацикливание агента.", "Непредсказуемые tool calls.", "Потеря контекста между итерациями."]
      },
      {
        "slug": "multi-agent-orchestration",
        "title": "Оркестрировать память, состояние и multi-agent работу",
        "goal": "Позволить нескольким агентам делить задачу, состояние и результаты экспериментов.",
        "work": ["Спроектировать task decomposition.", "Разделить short-term и long-term memory.", "Добавить checkpointing и resume для долгих workflow."],
        "artifacts": ["Модель состояния.", "Протокол coordination.", "Сценарии восстановления."],
        "risks": ["Конфликтующие агенты.", "Порча общего состояния.", "Дублирование дорогостоящих GPU-задач."]
      },
      {
        "slug": "reliability-observability",
        "title": "Добавить guardrails, evals и observability",
        "goal": "Сделать длинные агентные задачи измеримыми, воспроизводимыми и управляемыми.",
        "work": ["Логировать планы, действия, наблюдения и решения.", "Добавить regression evals для agent behavior.", "Описать failure modes и recovery policies."],
        "artifacts": ["Dashboard поведения агента.", "Набор evals.", "Failure taxonomy."],
        "risks": ["Тихая деградация качества.", "Ложное ощущение автономности.", "Сложность объяснения решений агента."]
      }
    ],
    "topics": [
      {"slug": "long-horizon-agents", "title": "Долгогоризонтные агенты", "subtopics": ["Планирование и остановка", "Checkpointing и resume"]},
      {"slug": "tool-extension-layer", "title": "Слой расширений и tools", "subtopics": ["Единый контракт tool calls", "Политики доступа к tools"]}
    ]
  },
  {
    "id": "03",
    "slug": "design-engineer",
    "title": "Member of Technical Staff, Design Engineer",
    "ruTitle": "Design Engineer для AI-native продукта",
    "domain": "Интерфейсы и абстракции для AI-разработчиков, исследователей и агентных workflow.",
    "source": "https://jobs.ashbyhq.com/mirendil/158c9a94-1cbf-44b6-a340-567a30a70406",
    "published": "2026-06-24",
    "tasks": [
      {
        "slug": "workflow-discovery-abstractions",
        "title": "Исследовать workflow и выделить продуктовые абстракции",
        "goal": "Понять, как исследователи реально запускают эксперименты, и превратить это в понятные интерфейсы.",
        "work": ["Провести интервью и shadowing.", "Собрать карту workflow от идеи до результата.", "Выделить сущности: experiment, run, checkpoint, eval, artifact."],
        "artifacts": ["Journey map.", "Словарь продуктовых сущностей.", "Схема экранов."],
        "risks": ["UI повторяет внутреннюю сложность.", "Потеря важных исследовательских деталей.", "Слишком ранняя фиксация абстракций."]
      },
      {
        "slug": "ai-native-ui-prototypes",
        "title": "Собрать AI-native интерфейсы для исследовательских задач",
        "goal": "Показать, как должен выглядеть продукт, где пользователь работает вместе с моделью и агентами.",
        "work": ["Спроектировать режимы совместной работы человек-агент.", "Добавить просмотр решений, логов и результатов.", "Проверить прототипы на реальных сценариях."],
        "artifacts": ["Интерактивный прототип.", "Компонентная карта.", "UX-критерии качества."],
        "risks": ["Скрытые действия агента.", "Перегрузка экранов логами.", "Неясная ответственность между человеком и системой."]
      },
      {
        "slug": "product-cohesion-internal-external",
        "title": "Связать внешний продукт с внутренними исследовательскими абстракциями",
        "goal": "Сделать так, чтобы продукт не расходился с тем, как устроены модели, harness и infrastructure.",
        "work": ["Синхронизировать UI-сущности с backend-моделью.", "Описать состояния, ошибки и пустые случаи.", "Проверить, что UI не обещает невозможные действия."],
        "artifacts": ["Product-backend contract.", "Список edge cases.", "Дизайн-система для research UI."],
        "risks": ["Разрыв между продуктом и платформой.", "Сложные состояния без визуального языка.", "Неочевидные ограничения доступа."]
      }
    ],
    "topics": [
      {"slug": "researcher-ux", "title": "UX исследователя", "subtopics": ["Эксперимент как основной объект", "Логи, артефакты и объяснимость"]},
      {"slug": "ai-native-interfaces", "title": "AI-native интерфейсы", "subtopics": ["Совместное управление задачей", "История решений агента"]}
    ]
  },
  {
    "id": "04",
    "slug": "post-training-rl",
    "title": "Member of Technical Staff, Post-Training, RL",
    "ruTitle": "Research Engineer по post-training и RL",
    "domain": "RL, SFT, distillation, reward signals, verifiers и long-horizon reasoning.",
    "source": "https://jobs.ashbyhq.com/mirendil/235e6bac-aad6-4caa-9427-1aff7190c45b",
    "published": "2026-06-24",
    "tasks": [
      {
        "slug": "post-training-recipes",
        "title": "Разрабатывать рецепты post-training",
        "goal": "Превращать сильную base model в модель, надежно решающую AI R&D задачи.",
        "work": ["Сравнивать RL, SFT и distillation.", "Подбирать data mixtures и hyperparameters.", "Анализировать стабильность и эффективность обучения."],
        "artifacts": ["Training recipe.", "Experiment report.", "Таблица ablations."],
        "risks": ["Переобучение на benchmark.", "Нестабильный reward signal.", "Слишком дорогие итерации."]
      },
      {
        "slug": "long-horizon-reasoning-rewards",
        "title": "Обучать long-horizon reasoning с полезной обратной связью",
        "goal": "Давать модели сигнал качества на длинных траекториях с множеством промежуточных решений.",
        "work": ["Разложить траекторию на проверяемые шаги.", "Определить sparse и dense rewards.", "Исследовать credit assignment и exploration."],
        "artifacts": ["Reward design.", "Trajectory schema.", "Метрики прогресса."],
        "risks": ["Reward hacking.", "Ложные промежуточные успехи.", "Неустойчивость на длинных задачах."]
      },
      {
        "slug": "verification-reward-quality",
        "title": "Строить verification pipelines и проверять качество reward",
        "goal": "Автоматически или полуавтоматически проверять правильность результатов модели.",
        "work": ["Определить, какие задачи можно проверить программно.", "Добавить verifiers и negative tests.", "Сравнить reward с human judgment."],
        "artifacts": ["Verifier suite.", "Reward quality report.", "Набор adversarial examples."],
        "risks": ["Хрупкие проверки.", "Модель учит баг verifier.", "Смещение human feedback."]
      }
    ],
    "topics": [
      {"slug": "rl-recipes", "title": "RL-рецепты для reasoning models", "subtopics": ["SFT, RL и distillation", "Off-policy и asynchronous training"]},
      {"slug": "verifiers", "title": "Verifiers и reward quality", "subtopics": ["Автоматическая проверка корректности", "Защита от reward hacking"]}
    ]
  },
  {
    "id": "05",
    "slug": "ai-for-ai-systems",
    "title": "Member of Technical Staff, AI for AI Systems",
    "ruTitle": "Research Engineer по AI for AI Systems",
    "domain": "AI-системы, улучшающие обучение, оценку, debugging, deployment и эксплуатацию AI.",
    "source": "https://jobs.ashbyhq.com/mirendil/24d91f89-d315-4c1b-bf84-dbe7314e30f4",
    "published": "2026-06-12",
    "tasks": [
      {
        "slug": "automate-ml-lifecycle",
        "title": "Автоматизировать части ML lifecycle",
        "goal": "Создать агенты и пайплайны, которые ускоряют data curation, training, eval и deployment.",
        "work": ["Найти повторяемые операции ML-команд.", "Собрать agent workflows для их автоматизации.", "Ввести контроль качества и rollback."],
        "artifacts": ["ML lifecycle map.", "Agent workflow specs.", "Метрики ускорения."],
        "risks": ["Автоматизация неправильного workflow.", "Скрытые ошибки в данных.", "Сложность воспроизведения результатов."]
      },
      {
        "slug": "ai-driven-debugging-evaluation",
        "title": "Использовать AI для debugging и evaluation AI-систем",
        "goal": "Находить причины деградаций, ошибок обучения и провалов eval быстрее человека.",
        "work": ["Собрать traces обучения и inference.", "Научить агента искать аномалии.", "Сравнить гипотезы агента с экспертной проверкой."],
        "artifacts": ["Debugging assistant.", "Anomaly taxonomy.", "Evaluation report."],
        "risks": ["Неверные causal объяснения.", "Опора на неполные traces.", "Автоматическое исправление без проверки."]
      },
      {
        "slug": "training-inference-optimization",
        "title": "Оптимизировать training и inference с помощью AI",
        "goal": "Снижать стоимость, память и latency через AI-assisted profiling и подбор конфигураций.",
        "work": ["Инструментировать throughput, memory и cost.", "Дать агенту пространство безопасных изменений.", "Проверять каждую оптимизацию benchmark-ами."],
        "artifacts": ["Optimization playbook.", "Benchmark suite.", "Cost report."],
        "risks": ["Локальная оптимизация в ущерб качеству.", "Нестабильные benchmark-и.", "Сложность переноса между hardware."]
      }
    ],
    "topics": [
      {"slug": "recursive-improvement", "title": "Рекурсивное улучшение AI-систем", "subtopics": ["AI улучшает ML workflow", "Границы автономного изменения системы"]},
      {"slug": "experiment-automation", "title": "Автоматизация экспериментов", "subtopics": ["Гипотезы, запуск и анализ", "Контроль воспроизводимости"]}
    ]
  },
  {
    "id": "06",
    "slug": "inference",
    "title": "Member of Technical Staff, Inference",
    "ruTitle": "Инженер inference-систем",
    "domain": "Serving frontier-моделей, hardware optimization, long context и agentic inference.",
    "source": "https://jobs.ashbyhq.com/mirendil/27f9eced-d320-4483-9d31-7e2fefb02c4c",
    "published": "2026-06-24",
    "tasks": [
      {
        "slug": "serving-frontier-models",
        "title": "Построить serving для frontier-моделей",
        "goal": "Обеспечить высокую пропускную способность и низкую latency для research и product workloads.",
        "work": ["Описать workload profiles.", "Выбрать serving framework.", "Добавить autoscaling и request isolation."],
        "artifacts": ["Serving architecture.", "SLO/SLA profile.", "Load test report."],
        "risks": ["GPU underutilization.", "Очереди при agentic bursts.", "Недостаточная изоляция workloads."]
      },
      {
        "slug": "hardware-optimization",
        "title": "Оптимизировать inference на GPU и accelerators",
        "goal": "Максимизировать FLOPs utilization, memory bandwidth и cost efficiency.",
        "work": ["Профилировать hot paths.", "Настроить batching, scheduling и memory layout.", "Сравнить производительность на разных accelerator profiles."],
        "artifacts": ["Profiling report.", "Optimization backlog.", "Cost-per-token dashboard."],
        "risks": ["Оптимизация под один тип hardware.", "Падение качества при агрессивной экономии.", "Сложность отладки distributed inference."]
      },
      {
        "slug": "inference-time-optimizations",
        "title": "Внедрить inference-time оптимизации",
        "goal": "Использовать speculative decoding, quantization, KV cache и batching без деградации результата.",
        "work": ["Проверить кандидаты оптимизаций.", "Измерить latency, throughput и качество.", "Добавить rollback и feature flags."],
        "artifacts": ["Optimization matrix.", "Quality gates.", "Rollout plan."],
        "risks": ["Незаметная деградация reasoning.", "Рост tail latency.", "Неверная работа на long-context задачах."]
      }
    ],
    "topics": [
      {"slug": "distributed-inference", "title": "Distributed inference", "subtopics": ["vLLM, SGLang, TensorRT-LLM", "Scheduling и batching"]},
      {"slug": "long-context-agentic-inference", "title": "Long-context и agentic inference", "subtopics": ["KV cache и context management", "Burst workloads от агентов"]}
    ]
  },
  {
    "id": "07",
    "slug": "model-evaluation",
    "title": "Member of Technical Staff, Model Evaluation",
    "ruTitle": "Research Engineer по evaluation",
    "domain": "Evaluation infrastructure, regression detection, behavior observability и связь eval-сигнала с training.",
    "source": "https://jobs.ashbyhq.com/mirendil/2c7c136a-b24b-456f-afb3-d5530bad84b5",
    "published": "2026-06-24",
    "tasks": [
      {
        "slug": "realistic-eval-frameworks",
        "title": "Разработать realistic eval frameworks",
        "goal": "Измерять способности модели на задачах, похожих на реальные AI R&D workflow.",
        "work": ["Определить capability axes.", "Создать задания с наблюдаемыми критериями успеха.", "Отделить benchmark score от продуктовой полезности."],
        "artifacts": ["Eval specification.", "Dataset card.", "Scoring rubric."],
        "risks": ["Goodhart на eval.", "Слишком узкие задания.", "Невоспроизводимые human ratings."]
      },
      {
        "slug": "continuous-regression-detection",
        "title": "Настроить continuous regression detection",
        "goal": "Быстро видеть, когда новая модель или training recipe ухудшает важное поведение.",
        "work": ["Запускать eval автоматически.", "Сохранять baseline и diff.", "Настроить алерты по значимым деградациям."],
        "artifacts": ["CI для eval.", "Regression dashboard.", "Release gate policy."],
        "risks": ["Слишком шумные алерты.", "Игнорирование rare failures.", "Медленные eval блокируют итерации."]
      },
      {
        "slug": "human-agent-inspection-workflows",
        "title": "Собрать agent-assisted workflows для инспекции поведения",
        "goal": "Помочь людям быстрее разбирать outputs, traces и ошибки модели.",
        "work": ["Спроектировать интерфейс review.", "Использовать агента для кластеризации failures.", "Собирать structured feedback."],
        "artifacts": ["Review workflow.", "Failure clusters.", "Feedback dataset."],
        "risks": ["Агент скрывает важные ошибки.", "Смещение ревьюеров.", "Плохое качество labels."]
      }
    ],
    "topics": [
      {"slug": "eval-design", "title": "Дизайн eval-задач", "subtopics": ["Capability axes", "Scoring и rubrics"]},
      {"slug": "behavior-observability", "title": "Наблюдаемость поведения модели", "subtopics": ["Training-run instrumentation", "Regression dashboards"]}
    ]
  },
  {
    "id": "08",
    "slug": "kernels",
    "title": "Member of Technical Staff, Kernels",
    "ruTitle": "Инженер custom ML kernels",
    "domain": "Низкоуровневая производительность ML kernels, memory bandwidth, compiler/runtime и low precision.",
    "source": "https://jobs.ashbyhq.com/mirendil/7a0f4749-29a4-43c8-abf5-2f0269d53f7c",
    "published": "2026-06-24",
    "tasks": [
      {
        "slug": "custom-ml-kernels",
        "title": "Разрабатывать custom ML kernels",
        "goal": "Ускорять критические операции training и inference через специализированные kernels.",
        "work": ["Найти bottleneck operators.", "Реализовать kernel и интеграцию.", "Сравнить correctness и performance с baseline."],
        "artifacts": ["Kernel implementation note.", "Correctness tests.", "Benchmark report."],
        "risks": ["Неверная численная точность.", "Сложность поддержки.", "Производительность только на одном shape."]
      },
      {
        "slug": "memory-bandwidth-optimization",
        "title": "Снимать memory bandwidth bottlenecks",
        "goal": "Снижать стоимость перемещения данных и улучшать hardware utilization.",
        "work": ["Профилировать memory-bound участки.", "Менять layout, fusion и tiling.", "Измерять реальный end-to-end выигрыш."],
        "artifacts": ["Profiler traces.", "Optimization diff.", "End-to-end throughput report."],
        "risks": ["Локальная скорость без системного выигрыша.", "Регрессии на других batch sizes.", "Сложная отладка race conditions."]
      },
      {
        "slug": "low-precision-runtime-validation",
        "title": "Проверять low-precision formats и runtime stack",
        "goal": "Использовать low precision без неприемлемой деградации качества и стабильности.",
        "work": ["Сравнить форматы точности.", "Добавить numerical checks.", "Проверить влияние на training и inference."],
        "artifacts": ["Precision matrix.", "Numerical validation suite.", "Runtime integration plan."],
        "risks": ["NaN/overflow.", "Скрытая потеря качества reasoning.", "Непереносимость между GPU поколениями."]
      }
    ],
    "topics": [
      {"slug": "gpu-kernels", "title": "GPU kernels", "subtopics": ["Tiling, fusion и memory layout", "Correctness testing"]},
      {"slug": "compiler-runtime", "title": "Compiler и runtime stack", "subtopics": ["Low precision", "Portability across hardware"]}
    ]
  },
  {
    "id": "09",
    "slug": "pretraining",
    "title": "Member of Technical Staff, Pretraining",
    "ruTitle": "Инженер pretraining stack",
    "domain": "Model architecture, distributed training, data pipelines, optimizer research и масштабирование до тысяч GPU.",
    "source": "https://jobs.ashbyhq.com/mirendil/8cc02441-3d2e-451c-b39e-3b95ef8b20f3",
    "published": "2026-06-24",
    "tasks": [
      {
        "slug": "architecture-training-algorithms",
        "title": "Итерировать model architectures и training algorithms",
        "goal": "Проверять архитектурные и алгоритмические гипотезы на pretraining runs.",
        "work": ["Сформулировать гипотезу.", "Реализовать изменение в training stack.", "Провести ablation и сравнить scaling behavior."],
        "artifacts": ["Architecture proposal.", "Ablation report.", "Scaling notes."],
        "risks": ["Неправильная интерпретация small-run.", "Скрытая деградация downstream.", "Высокая стоимость ошибки."]
      },
      {
        "slug": "distributed-training-thousands-gpus",
        "title": "Масштабировать distributed training до тысяч GPU",
        "goal": "Запускать крупные training jobs надежно, эффективно и воспроизводимо.",
        "work": ["Настроить parallelism strategy.", "Оптимизировать communication и checkpointing.", "Добавить recovery после сбоев."],
        "artifacts": ["Distributed training design.", "Runbook для сбоев.", "Utilization report."],
        "risks": ["Срыв долгих runs.", "Низкая utilization.", "Порча checkpoint."]
      },
      {
        "slug": "data-pipelines-curation",
        "title": "Построить data pipelines и dataset curation",
        "goal": "Дать модели качественные, проверяемые и эффективно подаваемые данные.",
        "work": ["Собрать ingestion pipeline.", "Добавить filtering, deduplication и quality metrics.", "Проверить влияние data mix на обучение."],
        "artifacts": ["Data pipeline spec.", "Dataset quality report.", "Data mix experiments."],
        "risks": ["Data contamination.", "Bias в data mix.", "I/O bottlenecks на training."]
      }
    ],
    "topics": [
      {"slug": "scaling-pretraining", "title": "Scaling pretraining", "subtopics": ["Parallelism strategies", "Checkpointing и recovery"]},
      {"slug": "data-quality", "title": "Качество данных", "subtopics": ["Filtering и deduplication", "Data mix и contamination"]}
    ]
  },
  {
    "id": "10",
    "slug": "infrastructure",
    "title": "Member of Technical Staff, Infrastructure",
    "ruTitle": "Инженер AI infrastructure",
    "domain": "Compute/cloud foundation, GPU clusters, Kubernetes, sandboxing, scheduling и state для long-running agents.",
    "source": "https://jobs.ashbyhq.com/mirendil/9c23413b-a0be-4b65-a2cf-7db9e2bae8d3",
    "published": "2026-06-24",
    "tasks": [
      {
        "slug": "sandboxing-untrusted-code",
        "title": "Изолировать untrusted code и агентные исполнения",
        "goal": "Дать исследовательским агентам среду выполнения без прямого риска для платформы.",
        "work": ["Выбрать runtime isolation.", "Ограничить сеть, storage и secrets.", "Интегрировать sandbox с observability."],
        "artifacts": ["Sandbox runtime design.", "Security test plan.", "Operational dashboard."],
        "risks": ["Sandbox escape.", "Скрытый egress.", "Нехватка observability при расследовании."]
      },
      {
        "slug": "multi-cluster-gpu-platform",
        "title": "Оперировать multi-cluster CPU/GPU платформу",
        "goal": "Свести compute к единой платформе с scheduling, autoscaling и multi-tenant isolation.",
        "work": ["Описать cluster topology.", "Настроить scheduler policies.", "Добавить quota, priority и cost visibility."],
        "artifacts": ["Compute platform map.", "Scheduling policy.", "Capacity dashboard."],
        "risks": ["Конкуренция research jobs.", "Дорогие idle GPU.", "Сложный incident response."]
      },
      {
        "slug": "long-running-agent-state",
        "title": "Хранить состояние long-running agents",
        "goal": "Поддержать checkpointing, recovery и resume для задач, которые идут часами или днями.",
        "work": ["Определить persistent state model.", "Разделить state, artifacts и logs.", "Проверить recovery на fault injection."],
        "artifacts": ["State model.", "Recovery tests.", "Retention policy."],
        "risks": ["Потеря состояния.", "Невоспроизводимость результата.", "Разрастание storage."]
      }
    ],
    "topics": [
      {"slug": "compute-platform", "title": "Compute platform", "subtopics": ["GPU scheduling", "Quota, priority и cost"]},
      {"slug": "agent-runtime-infra", "title": "Инфраструктура agent runtime", "subtopics": ["Stateful long-running tasks", "Sandbox observability"]}
    ]
  },
  {
    "id": "11",
    "slug": "post-training-rl-environments",
    "title": "Member of Technical Staff, Post-Training, RL Environments",
    "ruTitle": "Research Engineer по RL environments",
    "domain": "Data systems и execution environments для RL, long-horizon tasks, reward hacking prevention и multi-agent sandboxes.",
    "source": "https://jobs.ashbyhq.com/mirendil/9fd66ea3-817c-481a-b5c5-357dc993e18c",
    "published": "2026-06-24",
    "tasks": [
      {
        "slug": "long-horizon-rl-data-collection",
        "title": "Автоматизировать сбор данных для long-horizon RL",
        "goal": "Получать качественные траектории для сложных задач с множеством решений.",
        "work": ["Определить environment schema.", "Собирать trajectories, states и outcomes.", "Фильтровать невалидные и низкосигнальные данные."],
        "artifacts": ["Environment data schema.", "Collection pipeline.", "Data quality report."],
        "risks": ["Шумные траектории.", "Смещение environment distribution.", "Дорогая генерация данных."]
      },
      {
        "slug": "reward-hacking-prevention",
        "title": "Предотвращать reward hacking",
        "goal": "Сделать так, чтобы модель не училась обходить метрику вместо решения задачи.",
        "work": ["Выявить exploit paths.", "Добавить adversarial tests.", "Сравнить reward с независимыми проверками."],
        "artifacts": ["Reward threat model.", "Exploit test suite.", "Mitigation plan."],
        "risks": ["Модель использует баг среды.", "Verifier leakage.", "Награда не отражает реальную полезность."]
      },
      {
        "slug": "scalable-sandboxed-environments",
        "title": "Строить scalable sandboxed environments",
        "goal": "Запускать realistic RL tasks с несколькими агентами, узлами и пользователями.",
        "work": ["Описать topology среды.", "Добавить reset, snapshot и deterministic replay.", "Масштабировать запуск сред по cluster."],
        "artifacts": ["Environment runtime design.", "Replay tooling.", "Scale test report."],
        "risks": ["Невоспроизводимые среды.", "Слишком дорогой rollout.", "Слабая изоляция между задачами."]
      }
    ],
    "topics": [
      {"slug": "rl-environments", "title": "RL environments", "subtopics": ["Environment schema", "Reset, snapshot и replay"]},
      {"slug": "reward-robustness", "title": "Reward robustness", "subtopics": ["Reward hacking", "Verifier leakage"]}
    ]
  },
  {
    "id": "12",
    "slug": "post-training-rl-infra",
    "title": "Member of Technical Staff, Post-Training, RL Infra",
    "ruTitle": "Инженер RL infrastructure",
    "domain": "Инфраструктура масштабного RL, reliability, performance, benchmarking и feedback pipelines.",
    "source": "https://jobs.ashbyhq.com/mirendil/b56ba195-8baa-4f32-9891-20ef0cf6b18e",
    "published": "2026-06-24",
    "tasks": [
      {
        "slug": "large-scale-rl-training-infra",
        "title": "Построить инфраструктуру large-scale RL training",
        "goal": "Дать исследователям надежный контур для больших RL runs.",
        "work": ["Описать rollout, learner и evaluator components.", "Настроить scheduling и fault tolerance.", "Синхронизировать данные, policies и checkpoints."],
        "artifacts": ["RL infra architecture.", "Failure-mode tests.", "Checkpoint policy."],
        "risks": ["Stale policies.", "Потеря rollout data.", "Сложная отладка distributed runs."]
      },
      {
        "slug": "performance-reliability-benchmarking",
        "title": "Измерять performance, reliability и uptime",
        "goal": "Понимать, где RL stack теряет скорость, качество или стабильность.",
        "work": ["Ввести throughput и uptime metrics.", "Добавить synthetic и realistic benchmarks.", "Строить dashboards по bottlenecks."],
        "artifacts": ["Benchmark suite.", "Reliability dashboard.", "Optimization backlog."],
        "risks": ["Benchmark не отражает production.", "Скрытые tail failures.", "Оптимизация одной стадии в ущерб другой."]
      },
      {
        "slug": "feedback-pipelines",
        "title": "Закрыть loop между human signal, reward modeling и training",
        "goal": "Сделать обратную связь доступной для обучения без потери качества и происхождения данных.",
        "work": ["Описать feedback schema.", "Связать labels, reward model и training data.", "Добавить provenance и quality checks."],
        "artifacts": ["Feedback pipeline spec.", "Data lineage map.", "Quality gate checklist."],
        "risks": ["Плохие labels.", "Потеря provenance.", "Смешивание сигналов разного качества."]
      }
    ],
    "topics": [
      {"slug": "rl-platform", "title": "RL platform", "subtopics": ["Rollout, learner, evaluator", "Fault tolerance"]},
      {"slug": "training-feedback-loop", "title": "Training feedback loop", "subtopics": ["Human signal", "Reward modeling"]}
    ]
  },
  {
    "id": "13",
    "slug": "platform",
    "title": "Member of Technical Staff, Platform",
    "ruTitle": "Platform Engineer для AI R&D продукта",
    "domain": "Identity, usage tracking, billing, seat provisioning, compliance, isolation и governance.",
    "source": "https://jobs.ashbyhq.com/mirendil/e602d71e-c285-4ce1-89d7-acfec1fad247",
    "published": "2026-06-24",
    "tasks": [
      {
        "slug": "org-agent-identity",
        "title": "Спроектировать identity для организаций и агентов",
        "goal": "Разделить права людей, организаций, сервисов и автономных агентов.",
        "work": ["Определить principal types.", "Добавить impersonation и delegation policies.", "Логировать действия агента от имени пользователя."],
        "artifacts": ["Identity model.", "Permission matrix.", "Audit event schema."],
        "risks": ["Агент с избыточными правами.", "Неясная ответственность за действие.", "Трудность revocation."]
      },
      {
        "slug": "usage-billing-seat-provisioning",
        "title": "Построить usage tracking, billing и seat provisioning",
        "goal": "Сделать использование compute и platform resources измеримым и управляемым.",
        "work": ["Определить billable events.", "Связать usage с org, user и agent.", "Добавить лимиты, квоты и уведомления."],
        "artifacts": ["Usage event catalog.", "Billing integration spec.", "Quota policy."],
        "risks": ["Непредсказуемые расходы.", "Неточный attribution.", "Блокировка важных research runs."]
      },
      {
        "slug": "compliance-isolation-data-retention",
        "title": "Ввести compliance, workload isolation и data retention",
        "goal": "Поддержать regulated industries, включая life sciences, без потери скорости исследований.",
        "work": ["Описать retention policies.", "Разделить workloads и data planes.", "Добавить audit logs и compliance controls."],
        "artifacts": ["Compliance checklist.", "Isolation design.", "Retention matrix."],
        "risks": ["Нарушение требований отрасли.", "Смешивание данных клиентов.", "Слишком тяжелые процессы для research velocity."]
      }
    ],
    "topics": [
      {"slug": "governance-platform", "title": "Governance platform", "subtopics": ["Identity для агентов", "Audit logs"]},
      {"slug": "regulated-industries", "title": "Regulated industries", "subtopics": ["Life sciences requirements", "Data retention"]}
    ]
  },
  {
    "id": "14",
    "slug": "product-development",
    "title": "Member of Technical Staff, Product Development",
    "ruTitle": "Инженер product development для AI R&D",
    "domain": "Инструменты продуктивности, автоматизация research workflows и связь research, engineering и user needs.",
    "source": "https://jobs.ashbyhq.com/mirendil/f27615a1-e382-4d81-8d35-556d6ea4751e",
    "published": "2026-06-24",
    "tasks": [
      {
        "slug": "researcher-productivity-tools",
        "title": "Строить инструменты продуктивности исследователей",
        "goal": "Уменьшить время между гипотезой, экспериментом, результатом и следующим решением.",
        "work": ["Найти bottlenecks в ежедневной работе.", "Собрать tool prototypes.", "Измерить time-to-insight."],
        "artifacts": ["Productivity audit.", "Prototype plan.", "Adoption metrics."],
        "risks": ["Инструмент не входит в реальный workflow.", "Сложная поддержка внутренних tools.", "Метрики продуктивности вводят в заблуждение."]
      },
      {
        "slug": "research-workflow-automation",
        "title": "Автоматизировать research workflows",
        "goal": "Передать агентам рутинные части экспериментов, не теряя human control.",
        "work": ["Разделить workflow на автоматические и approval-required шаги.", "Интегрировать agents, tools и evals.", "Добавить трассировку решений."],
        "artifacts": ["Automation map.", "Approval gates.", "Trace viewer requirements."],
        "risks": ["Агент делает дорогое действие без проверки.", "Невоспроизводимые автоматические изменения.", "Пользователь не доверяет результату."]
      },
      {
        "slug": "bridge-research-engineering-users",
        "title": "Связать research, engineering и user needs",
        "goal": "Переводить исследовательские возможности в продуктовые сценарии и обратно.",
        "work": ["Собирать needs от исследователей и внешних пользователей.", "Оценивать feasibility с engineering.", "Формировать roadmap вокруг bottlenecks."],
        "artifacts": ["Problem backlog.", "Roadmap hypotheses.", "User-research notes."],
        "risks": ["Продукт уходит от research reality.", "Слишком широкий roadmap.", "Нет владельца end-to-end результата."]
      }
    ],
    "topics": [
      {"slug": "product-strategy", "title": "Product strategy для AI R&D", "subtopics": ["From capability to workflow", "Roadmap по bottlenecks"]},
      {"slug": "workflow-bottlenecks", "title": "Workflow bottlenecks", "subtopics": ["Time-to-insight", "Human approval gates"]}
    ]
  }
]
'@

$roles = $rolesJson | ConvertFrom-Json

$rootReadme = @"
# Mirendil AI R&D Wiki

Русскоязычный Markdown-монорепозиторий по теме **AI для AI R&D**: роли, задачи, темы, подтемы, риски и артефакты вокруг компании Mirendil и похожего класса frontier AI research platform.

Снимок структуры сделан по публичным материалам на $snapshotDate.

## Быстрый вход

- [Вики](wiki/README.md)
- [Обзор системы](wiki/10-overview/README.md)
- [Позиции и профессии](wiki/20-positions/README.md)
- [Источники](wiki/00-meta/sources.md)
- [Глоссарий](wiki/00-meta/glossary.md)

## Принцип организации

Каждая позиция хранится в отдельной папке. Внутри позиции каждая задача хранится в собственной подпапке `10-zadachi`, а каждая тема и подтема - в `20-temy`. Такой формат ближе к wiki: страницы короткие, связаны ссылками и пригодны для постепенного расширения.
"@

Write-WikiFile -Path (Join-WikiPath @("README.md")) -Content $rootReadme

$wikiReadme = @"
# Wiki

Эта вики описывает стек автономной AI R&D лаборатории: от pretraining и post-training до agent harness, sandbox, evaluation, product и platform governance.

## Разделы

- [00-meta](00-meta/README.md) - правила ведения, источники, глоссарий.
- [10-overview](10-overview/README.md) - контекст Mirendil, карта системы, жизненный цикл AI R&D.
- [20-positions](20-positions/README.md) - отдельные папки по всем публичным позициям.
- [30-cross-cutting](30-cross-cutting/README.md) - сквозные темы: безопасность, evals, агентность, compute, продукт.
- [90-templates](90-templates/README.md) - шаблоны для новых позиций, задач и подтем.

## Как читать

1. Начните с [карты системы](10-overview/architecture-map.md).
2. Откройте [индекс позиций](20-positions/README.md).
3. Внутри нужной позиции идите по задачам и темам.
4. Для добавления новой профессии используйте [шаблон позиции](90-templates/position-template.md).
"@

Write-WikiFile -Path (Join-WikiPath @("wiki", "README.md")) -Content $wikiReadme

Write-WikiFile -Path (Join-WikiPath @("wiki", "00-meta", "README.md")) -Content @"
# 00-meta

Служебный раздел вики.

- [Соглашения](conventions.md)
- [Источники](sources.md)
- [Глоссарий](glossary.md)
"@

Write-WikiFile -Path (Join-WikiPath @("wiki", "00-meta", "conventions.md")) -Content @"
# Соглашения

## Имена папок

- `NN-slug` - стабильный номер и короткий английский slug.
- `README.md` - главная страница любой папки.
- `10-zadachi` - отдельные задачи позиции.
- `20-temy` - темы и вложенные подтемы.

## Стиль

- Язык документации: русский.
- Технические термины можно оставлять на английском, если они являются отраслевыми: `agent harness`, `RL`, `verifier`, `checkpoint`, `KV cache`.
- Каждая задача должна иметь цель, работы, артефакты, критерии готовности и риски.
- Каждая тема должна объяснять, зачем она нужна в AI R&D системе.

## Снимок данных

Публичные вакансии и материалы зафиксированы как снимок на $snapshotDate. При обновлении источников добавляйте дату и ссылку в [sources.md](sources.md).
"@

Write-WikiFile -Path (Join-WikiPath @("wiki", "00-meta", "sources.md")) -Content @"
# Источники

## Основные

- [Mirendil](https://mirendil.com/) - описание миссии, команды и seed round.
- [Mirendil Careers](https://mirendil.com/careers.html) - публичная страница вакансий.
- [Ashby job board Mirendil](https://jobs.ashbyhq.com/mirendil) - источник карточек вакансий.
- [a16z: Investing in Mirendil](https://a16z.com/announcement/investing-in-mirendil/) - инвестиционный тезис и описание платформы.
- [Habr: Выходцы из Anthropic создают ИИ, который улучшает сам себя](https://habr.com/ru/news/1051742/) - русскоязычный пересказ новости.

## Как использовать источники

- Ссылку на конкретную вакансию храните в README соответствующей позиции.
- Если текст роли изменился, не редактируйте историю молча: добавьте дату обновления и краткое отличие.
- Не копируйте длинные фрагменты вакансий целиком; пересказывайте и структурируйте.
"@

Write-WikiFile -Path (Join-WikiPath @("wiki", "00-meta", "glossary.md")) -Content @"
# Глоссарий

- **AI R&D** - исследования и разработка AI-систем: данные, обучение, evaluation, deployment, inference, инфраструктура и продукт.
- **Agent harness** - программная обвязка вокруг модели: цикл действий, tools, память, состояние, ограничения и наблюдаемость.
- **Frontier model** - модель на границе современных возможностей по масштабу и качеству.
- **Post-training** - этап после базового обучения: SFT, RL, distillation, alignment, tuning поведения.
- **Verifier** - автоматическая или полуавтоматическая проверка корректности результата.
- **Reward hacking** - ситуация, когда модель оптимизирует формальную награду, но не решает реальную задачу.
- **Sandbox** - изолированная среда выполнения кода или действий агента.
- **Long-horizon task** - задача с длинной последовательностью промежуточных решений.
- **Checkpoint** - сохраненное состояние модели, эксперимента, агента или training run.
- **KV cache** - кеш ключей и значений в transformer inference, важный для long-context и latency.
"@

Write-WikiFile -Path (Join-WikiPath @("wiki", "10-overview", "README.md")) -Content @"
# 10-overview

Раздел фиксирует общую картину: что такое Mirendil-подобная AI R&D платформа и как роли складываются в единую систему.

- [Контекст Mirendil](mirendil-context.md)
- [Карта архитектуры](architecture-map.md)
- [Жизненный цикл AI R&D](ai-rnd-lifecycle.md)
"@

Write-WikiFile -Path (Join-WikiPath @("wiki", "10-overview", "mirendil-context.md")) -Content @"
# Контекст Mirendil

Mirendil позиционирует себя как frontier AI research company, которая строит систему для ускорения AI R&D. Публичная формулировка: democratizing frontier AI R&D to accelerate science and technology.

Вакансии подтверждают, что компания нанимает не только продуктовых инженеров, а весь стек лаборатории:

- pretraining и model architecture;
- post-training, RL и reward/verifier stack;
- inference, kernels и hardware optimization;
- agent harness и long-running agents;
- sandbox, security и platform governance;
- evaluation, product и design для исследовательских workflow.

Практический вывод: это вики не про один продуктовый экран, а про систему, где модель, агентная обвязка, эксперименты, compute и безопасность проектируются вместе.
"@

Write-WikiFile -Path (Join-WikiPath @("wiki", "10-overview", "architecture-map.md")) -Content @"
# Карта архитектуры

```mermaid
flowchart TD
  A["Идея исследования"] --> B["Agent Harness"]
  B --> C["Tools и Sandbox"]
  C --> D["Эксперименты и RL Environments"]
  D --> E["Training: Pretraining / Post-training"]
  E --> F["Evaluation и Verifiers"]
  F --> G["Inference и Product"]
  G --> H["Feedback и новые гипотезы"]
  H --> B

  I["Infrastructure: GPU, storage, scheduling"] --> C
  I --> E
  I --> G
  J["Security и Platform Governance"] --> B
  J --> C
  J --> I
```

Главный контур - замкнутый цикл AI R&D: гипотеза, агентное исполнение, эксперимент, обучение, evaluation, feedback, новая гипотеза.
"@

Write-WikiFile -Path (Join-WikiPath @("wiki", "10-overview", "ai-rnd-lifecycle.md")) -Content @"
# Жизненный цикл AI R&D

1. **Постановка цели** - человек или агент формулирует исследовательскую задачу.
2. **Планирование** - agent harness разбивает цель на шаги, tools и проверки.
3. **Исполнение** - sandbox запускает код, environments и внешние инструменты.
4. **Обучение** - pretraining или post-training stack проводит runs.
5. **Evaluation** - verifiers и eval frameworks измеряют поведение модели.
6. **Анализ** - агент и исследователь изучают traces, failures и метрики.
7. **Итерация** - система решает, что менять в данных, reward, архитектуре, inference или product.

Ключевой риск: чем автономнее цикл, тем важнее security, auditability, eval quality и human approval gates.
"@

$positionRows = @()
foreach ($role in $roles) {
    $positionRows += "| $($role.id) | [$($role.ruTitle)]($(RelativeRoleLink $role)) | $($role.domain) | [Ashby]($($role.source)) |"
}

Write-WikiFile -Path (Join-WikiPath @("wiki", "20-positions", "README.md")) -Content @"
# 20-positions

Индекс публичных позиций Mirendil, разложенных как wiki-папки. Все позиции из снимка относятся к `Tech`, `Full-time`, `On-site`, `San Francisco`.

| ID | Позиция | Область | Источник |
| --- | --- | --- | --- |
$($positionRows -join "`n")

## Как добавлять новую позицию

1. Создайте папку `NN-new-role-slug`.
2. Внутри добавьте `README.md`, `10-zadachi` и `20-temy`.
3. Каждую задачу храните в отдельной подпапке.
4. Каждую тему храните в отдельной подпапке, а подтемы - в `10-podtemy`.
"@

foreach ($role in $roles) {
    $roleDirName = "$($role.id)-$($role.slug)"
    $roleDir = Join-WikiPath @("wiki", "20-positions", $roleDirName)

    $focus = @()
    foreach ($task in $role.tasks) {
        $focus += $task.title
    }

    Write-WikiFile -Path (Join-Path $roleDir "README.md") -Content @"
# $($role.ruTitle)

**Оригинальная позиция:** $($role.title)  
**Формат:** Full-time, on-site, San Francisco  
**Дата публикации:** $($role.published)  
**Источник:** [$($role.title)]($($role.source))

## Назначение роли

$($role.domain)

Эта папка описывает позицию как профессию внутри AI R&D лаборатории: задачи, темы, подтемы, артефакты и риски.

## Основные задачи

$(TaskLinkList -Tasks $role.tasks)

## Темы

$(TopicLinkList -Topics $role.topics)

## Ожидаемый вклад

$(MdList $focus)

## Связь с общей системой

Роль участвует в замкнутом контуре AI R&D: агентные workflow, обучение, evaluation, inference, безопасность, продукт и инфраструктура должны развиваться согласованно.
"@

    Write-WikiFile -Path (Join-Path $roleDir "10-zadachi/README.md") -Content @"
# Задачи позиции: $($role.ruTitle)

Каждая задача хранится в отдельной подпапке.

$(TaskLinkList -Tasks $role.tasks -Prefix "")
"@

    for ($i = 0; $i -lt $role.tasks.Count; $i++) {
        $task = $role.tasks[$i]
        $taskNum = "{0:D2}" -f ($i + 1)
        $taskDir = Join-Path $roleDir "10-zadachi/$taskNum-$($task.slug)"
        Write-WikiFile -Path (Join-Path $taskDir "README.md") -Content @"
# Задание: $($task.title)

## Цель

$($task.goal)

## Работы

$(MdList $task.work)

## Артефакты

$(MdList $task.artifacts)

## Критерии готовности

- Есть владелец результата и понятная граница ответственности.
- Результат проверяется через тест, eval, benchmark, review или audit.
- Риски задокументированы до запуска в production или expensive research run.

## Риски

$(MdList $task.risks)

## Навигация

- [Назад к позиции](../../README.md)
- [Все задачи позиции](../README.md)
"@
    }

    Write-WikiFile -Path (Join-Path $roleDir "20-temy/README.md") -Content @"
# Темы позиции: $($role.ruTitle)

Каждая тема хранится в отдельной подпапке. Внутри темы подтемы лежат в `10-podtemy`.

$(TopicLinkList -Topics $role.topics -Prefix "")
"@

    for ($i = 0; $i -lt $role.topics.Count; $i++) {
        $topic = $role.topics[$i]
        $topicNum = "{0:D2}" -f ($i + 1)
        $topicDir = Join-Path $roleDir "20-temy/$topicNum-$($topic.slug)"

        $subtopicRows = @()
        for ($j = 0; $j -lt $topic.subtopics.Count; $j++) {
            $subNum = "{0:D2}" -f ($j + 1)
            $subtopicRows += "- [$($topic.subtopics[$j])](10-podtemy/$subNum/README.md)"
        }

        Write-WikiFile -Path (Join-Path $topicDir "README.md") -Content @"
# Тема: $($topic.title)

## Почему это важно

Тема относится к позиции **$($role.ruTitle)** и описывает отдельную область знаний, которую нужно развивать независимо от конкретных задач.

## Подтемы

$($subtopicRows -join "`n")

## Практическая проверка

- Есть связь с реальным workflow AI R&D.
- Есть измеримый результат: качество, скорость, безопасность, стоимость или надежность.
- Есть понятные зависимости от других ролей.

## Навигация

- [Назад к позиции](../../README.md)
- [Все темы позиции](../README.md)
"@

        for ($j = 0; $j -lt $topic.subtopics.Count; $j++) {
            $subNum = "{0:D2}" -f ($j + 1)
            $subtopicTitle = $topic.subtopics[$j]
            $subtopicDir = Join-Path $topicDir "10-podtemy/$subNum"
            Write-WikiFile -Path (Join-Path $subtopicDir "README.md") -Content @"
# Подтема: $subtopicTitle

## Контекст

Подтема входит в тему **$($topic.title)** для позиции **$($role.ruTitle)**.

## Что нужно раскрыть

- Основные понятия и границы подтемы.
- Типовые решения и trade-off.
- Метрики качества или критерии проверки.
- Связанные риски для AI R&D платформы.

## Минимальный результат документации

- Описание проблемы.
- Список решений или подходов.
- Примеры артефактов.
- Открытые вопросы.

## Навигация

- [Назад к теме](../../README.md)
- [Назад к позиции](../../../../README.md)
"@
        }
    }
}

Write-WikiFile -Path (Join-WikiPath @("wiki", "30-cross-cutting", "README.md")) -Content @"
# 30-cross-cutting

Сквозные темы, которые проходят через несколько позиций.

## Темы

- **Безопасность и sandboxing** - Security Engineer, Infrastructure, Platform, Agent Harness.
- **Evaluation и verifiers** - Model Evaluation, Post-Training RL, RL Environments.
- **Agentic workflow** - Agent Harness, Product Development, Design Engineer, AI for AI Systems.
- **Compute efficiency** - Pretraining, Inference, Kernels, Infrastructure.
- **Governance и auditability** - Platform, Security Engineer, Product Development.

## Почему это отдельный раздел

Многие реальные проблемы AI R&D не принадлежат одной команде. Например, reward hacking требует работы RL, eval, security и product одновременно.
"@

Write-WikiFile -Path (Join-WikiPath @("wiki", "90-templates", "README.md")) -Content @"
# 90-templates

Шаблоны для расширения вики.

- [Шаблон позиции](position-template.md)
- [Шаблон задачи](task-template.md)
- [Шаблон темы](topic-template.md)
"@

Write-WikiFile -Path (Join-WikiPath @("wiki", "90-templates", "position-template.md")) -Content @"
# <Название позиции>

**Оригинальная позиция:**  
**Формат:**  
**Источник:**  

## Назначение роли

Кратко: зачем эта роль нужна в AI R&D системе.

## Основные задачи

- `10-zadachi/01-task-slug/README.md` - задача 1.

## Темы

- `20-temy/01-topic-slug/README.md` - тема 1.

## Ожидаемый вклад

- Артефакт или capability, который роль добавляет системе.
"@

Write-WikiFile -Path (Join-WikiPath @("wiki", "90-templates", "task-template.md")) -Content @"
# Задание: <Название>

## Цель

## Работы

- 

## Артефакты

- 

## Критерии готовности

- 

## Риски

- 
"@

Write-WikiFile -Path (Join-WikiPath @("wiki", "90-templates", "topic-template.md")) -Content @"
# Тема: <Название>

## Почему это важно

## Подтемы

- `10-podtemy/01/README.md` - подтема 1.

## Практическая проверка

- 
"@

$extensionScript = Join-Path $PSScriptRoot "extend-mirendil-wiki.ps1"
if (Test-Path -LiteralPath $extensionScript) {
    & $extensionScript -RepoRoot $repoRoot
}

Write-Host "Generated Mirendil AI R&D wiki at $repoRoot"
