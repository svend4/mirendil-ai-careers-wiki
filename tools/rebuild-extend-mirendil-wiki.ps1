param(
    [string]$RepoRoot = (Split-Path -Parent $PSScriptRoot)
)

$ErrorActionPreference = "Stop"
$enc = New-Object System.Text.UTF8Encoding($true)

$includeFiles = @(
    "README.md",
    "wiki/README.md"
)

$includeDirs = @(
    "wiki/30-cross-cutting",
    "wiki/40-roadmaps",
    "wiki/50-projects",
    "wiki/60-skill-matrix",
    "wiki/65-scorecards",
    "wiki/70-playbooks",
    "wiki/80-reference-architecture",
    "wiki/85-quality-gates",
    "wiki/95-scenarios",
    "wiki/100-curriculum",
    "wiki/110-implementation-backlog",
    "wiki/120-operating-model",
    "wiki/130-risk-register",
    "wiki/140-artifact-library",
    "wiki/150-metrics-observability",
    "wiki/160-hiring-interview-kits",
    "wiki/170-maturity-model",
    "wiki/180-research-agenda",
    "wiki/190-domain-adaptation-kits",
    "wiki/200-protocols-contracts",
    "wiki/210-indexes-maps",
    "wiki/220-maintenance-tooling",
    "wiki/230-governance-policies",
    "wiki/240-delivery-plans",
    "wiki/250-role-practical-assignments",
    "wiki/260-first-90-days",
    "wiki/270-capstone-labs",
    "wiki/280-decision-record-examples",
    "wiki/290-evidence-packets",
    "wiki/300-anti-patterns-remediations",
    "wiki/310-operational-review-cadences",
    "wiki/320-dashboard-examples",
    "wiki/330-decision-trees",
    "wiki/340-handoff-contracts",
    "wiki/350-ownership-raci",
    "wiki/360-slo-error-budgets",
    "wiki/370-red-team-drills",
    "wiki/380-operating-report-templates",
    "wiki/390-control-catalog",
    "wiki/400-audit-checklists",
    "wiki/410-source-refresh-workflow",
    "wiki/420-wiki-release-management",
    "wiki/430-benchmark-suite-blueprints",
    "wiki/440-dataset-recipes",
    "wiki/450-labeling-guidelines",
    "wiki/460-evaluator-calibration"
)

$docs = New-Object System.Collections.Generic.List[string]
foreach ($file in $includeFiles) {
    $path = Join-Path $RepoRoot ($file -replace "/", [IO.Path]::DirectorySeparatorChar)
    if (Test-Path -LiteralPath $path) { $docs.Add($file) }
}

foreach ($dir in $includeDirs) {
    $path = Join-Path $RepoRoot ($dir -replace "/", [IO.Path]::DirectorySeparatorChar)
    if (-not (Test-Path -LiteralPath $path)) { continue }
    Get-ChildItem -LiteralPath $path -Recurse -File -Filter *.md |
        Sort-Object FullName |
        ForEach-Object {
            $relative = $_.FullName.Substring($RepoRoot.Length).TrimStart("\", "/") -replace "\\", "/"
            $docs.Add($relative)
        }
}

$sb = New-Object System.Text.StringBuilder
[void]$sb.AppendLine('param(')
[void]$sb.AppendLine('    [string]$RepoRoot = (Split-Path -Parent $PSScriptRoot)')
[void]$sb.AppendLine(')')
[void]$sb.AppendLine('')
[void]$sb.AppendLine('$ErrorActionPreference = "Stop"')
[void]$sb.AppendLine('$enc = New-Object System.Text.UTF8Encoding($true)')
[void]$sb.AppendLine('')
[void]$sb.AppendLine('function Write-Doc {')
[void]$sb.AppendLine('    param(')
[void]$sb.AppendLine('        [Parameter(Mandatory = $true)][string]$Path,')
[void]$sb.AppendLine('        [Parameter(Mandatory = $true)][string]$Content')
[void]$sb.AppendLine('    )')
[void]$sb.AppendLine('    $full = Join-Path $RepoRoot ($Path -replace "/", [IO.Path]::DirectorySeparatorChar)')
[void]$sb.AppendLine('    $dir = Split-Path -Parent $full')
[void]$sb.AppendLine('    if (-not (Test-Path -LiteralPath $dir)) {')
[void]$sb.AppendLine('        New-Item -ItemType Directory -Force -Path $dir | Out-Null')
[void]$sb.AppendLine('    }')
[void]$sb.AppendLine('    $clean = $Content.TrimStart([char]0xFEFF).Trim() + "`n"')
[void]$sb.AppendLine('    [System.IO.File]::WriteAllText($full, $clean, $enc)')
[void]$sb.AppendLine('}')
[void]$sb.AppendLine('')
[void]$sb.AppendLine('$docs = @(')

foreach ($file in $docs) {
    $full = Join-Path $RepoRoot ($file -replace "/", [IO.Path]::DirectorySeparatorChar)
    if (-not (Test-Path -LiteralPath $full)) {
        throw "Missing file for extension script: $file"
    }
    $bytes = [System.IO.File]::ReadAllBytes($full)
    $b64 = [Convert]::ToBase64String($bytes)
    [void]$sb.AppendLine('    @{ Path = ''' + $file + '''; ContentBase64 = ''' + $b64 + ''' }')
}

[void]$sb.AppendLine(')')
[void]$sb.AppendLine('')
[void]$sb.AppendLine('foreach ($doc in $docs) {')
[void]$sb.AppendLine('    $content = [System.Text.Encoding]::UTF8.GetString([Convert]::FromBase64String($doc.ContentBase64))')
[void]$sb.AppendLine('    $content = $content.TrimStart([char]0xFEFF)')
[void]$sb.AppendLine('    Write-Doc -Path $doc.Path -Content $content')
[void]$sb.AppendLine('}')
[void]$sb.AppendLine('')
[void]$sb.AppendLine('Write-Host "Extended Mirendil AI R&D wiki at $RepoRoot"')

$out = Join-Path $RepoRoot "tools\extend-mirendil-wiki.ps1"
[System.IO.File]::WriteAllText($out, $sb.ToString(), $enc)
Write-Host "Rebuilt extension snapshot with $($docs.Count) files."
