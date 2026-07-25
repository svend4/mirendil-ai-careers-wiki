param(
    [string]$RepoRoot = (Split-Path -Parent $PSScriptRoot)
)

$ErrorActionPreference = "Stop"

$powerShell = (Get-Command pwsh -ErrorAction SilentlyContinue).Source
if (-not $powerShell) {
    $powerShell = (Get-Command powershell -ErrorAction Stop).Source
}

$checks = @(
    @{ Name = "links"; Script = Join-Path $PSScriptRoot "check-wiki-links.ps1" },
    @{ Name = "encoding"; Script = Join-Path $PSScriptRoot "check-wiki-encoding.ps1" }
)

foreach ($check in $checks) {
    Write-Host "Running wiki $($check.Name) check..."
    & $powerShell -NoProfile -ExecutionPolicy Bypass -File $check.Script -RepoRoot $RepoRoot
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Wiki $($check.Name) check failed." -ForegroundColor Red
        exit $LASTEXITCODE
    }
}

Write-Host "Wiki stats:"
& $powerShell -NoProfile -ExecutionPolicy Bypass -File (Join-Path $PSScriptRoot "wiki-stats.ps1") -RepoRoot $RepoRoot
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

Write-Host "OK: wiki maintenance checks passed."
exit 0
