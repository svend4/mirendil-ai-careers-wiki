param(
    [string]$RepoRoot = (Split-Path -Parent $PSScriptRoot),
    [switch]$AsMarkdown
)

$ErrorActionPreference = "Stop"

$wikiRoot = Join-Path $RepoRoot "wiki"
$toolsRoot = Join-Path $RepoRoot "tools"
$markdownFiles = @()
if (Test-Path -LiteralPath (Join-Path $RepoRoot "README.md")) {
    $markdownFiles += Get-Item -LiteralPath (Join-Path $RepoRoot "README.md")
}
if (Test-Path -LiteralPath $wikiRoot) {
    $markdownFiles += Get-ChildItem -LiteralPath $wikiRoot -Recurse -File -Filter *.md
}

$linkMatches = 0
$externalLinks = 0
$internalLinks = 0
foreach ($file in $markdownFiles) {
    $text = [System.IO.File]::ReadAllText($file.FullName)
    foreach ($match in [regex]::Matches($text, "(?<!!)]?\[[^\]]+\]\(([^)]+)\)")) {
        $target = $match.Groups[1].Value.Trim()
        if ([string]::IsNullOrWhiteSpace($target)) { continue }
        $linkMatches++
        if ($target -match "^(https?:|mailto:|tel:)") { $externalLinks++ } else { $internalLinks++ }
    }
}

$positionsRoot = Join-Path $wikiRoot "20-positions"
$positionFolders = @()
$taskPages = @()
$topicPages = @()
$subtopicPages = @()
if (Test-Path -LiteralPath $positionsRoot) {
    $positionFolders = Get-ChildItem -LiteralPath $positionsRoot -Directory | Where-Object { $_.Name -match "^\d{2}-" }
    $taskPages = Get-ChildItem -LiteralPath $positionsRoot -Recurse -File -Filter README.md | Where-Object { $_.FullName -match "[\\/]10-zadachi[\\/]\d{2}-" }
    $topicPages = Get-ChildItem -LiteralPath $positionsRoot -Recurse -File -Filter README.md | Where-Object { $_.FullName -match "[\\/]20-temy[\\/]\d{2}-" -and $_.FullName -notmatch "[\\/]10-podtemy[\\/]" }
    $subtopicPages = Get-ChildItem -LiteralPath $positionsRoot -Recurse -File -Filter README.md | Where-Object { $_.FullName -match "[\\/]10-podtemy[\\/]\d+" }
}

$sections = @()
if (Test-Path -LiteralPath $wikiRoot) {
    $sections = Get-ChildItem -LiteralPath $wikiRoot -Directory | Sort-Object Name
}

$toolScripts = @()
if (Test-Path -LiteralPath $toolsRoot) {
    $toolScripts = Get-ChildItem -LiteralPath $toolsRoot -File -Filter *.ps1
}

$stats = @(
    [pscustomobject]@{ Metric = "Wiki sections"; Value = $sections.Count },
    [pscustomobject]@{ Metric = "Markdown files"; Value = $markdownFiles.Count },
    [pscustomobject]@{ Metric = "Position folders"; Value = $positionFolders.Count },
    [pscustomobject]@{ Metric = "Task pages"; Value = $taskPages.Count },
    [pscustomobject]@{ Metric = "Topic pages"; Value = $topicPages.Count },
    [pscustomobject]@{ Metric = "Subtopic pages"; Value = $subtopicPages.Count },
    [pscustomobject]@{ Metric = "Internal markdown links"; Value = $internalLinks },
    [pscustomobject]@{ Metric = "External markdown links"; Value = $externalLinks },
    [pscustomobject]@{ Metric = "PowerShell tools"; Value = $toolScripts.Count }
)

if ($AsMarkdown) {
    "| Metric | Value |"
    "| --- | ---: |"
    foreach ($row in $stats) {
        "| $($row.Metric) | $($row.Value) |"
    }
}
else {
    $stats | Format-Table -AutoSize
}
