param(
    [string]$RepoRoot = (Split-Path -Parent $PSScriptRoot),
    [string[]]$MarkdownRoots = @("README.md", "wiki"),
    [switch]$Quiet
)

$ErrorActionPreference = "Stop"

function Resolve-RepoPath {
    param([string]$Path)
    if ([System.IO.Path]::IsPathRooted($Path)) { return $Path }
    return Join-Path $RepoRoot ($Path -replace "/", [IO.Path]::DirectorySeparatorChar)
}

function Get-MarkdownFiles {
    $files = New-Object System.Collections.Generic.List[string]
    foreach ($root in $MarkdownRoots) {
        $full = Resolve-RepoPath -Path $root
        if (-not (Test-Path -LiteralPath $full)) { continue }
        $item = Get-Item -LiteralPath $full
        if ($item.PSIsContainer) {
            Get-ChildItem -LiteralPath $full -Recurse -File -Filter *.md |
                Sort-Object FullName |
                ForEach-Object { $files.Add($_.FullName) }
        }
        elseif ($item.Extension -eq ".md") {
            $files.Add($item.FullName)
        }
    }
    return $files
}

function Normalize-LinkTarget {
    param([string]$RawTarget)

    $target = $RawTarget.Trim()
    if ([string]::IsNullOrWhiteSpace($target)) { return $null }

    if ($target.StartsWith("<") -and $target.EndsWith(">")) {
        $target = $target.Substring(1, $target.Length - 2).Trim()
    }

    if ($target -match "^(https?:|mailto:|tel:|#)") { return $null }
    if ($target -match "^[a-zA-Z][a-zA-Z0-9+.-]*:") { return $null }

    $target = ($target -split "#", 2)[0]
    if ([string]::IsNullOrWhiteSpace($target)) { return $null }

    if ($target.Contains(" `"")) {
        $target = ($target -split "\s+", 2)[0]
    }

    return $target
}

$files = Get-MarkdownFiles
$broken = New-Object System.Collections.Generic.List[object]
$linkCount = 0

foreach ($file in $files) {
    $text = [System.IO.File]::ReadAllText($file)
    $dir = Split-Path -Parent $file
    foreach ($match in [regex]::Matches($text, "(?<!!)]?\[[^\]]+\]\(([^)]+)\)")) {
        $target = Normalize-LinkTarget -RawTarget $match.Groups[1].Value
        if ($null -eq $target) { continue }
        $linkCount++
        $targetPath = Join-Path $dir ($target -replace "/", [IO.Path]::DirectorySeparatorChar)
        if (-not (Test-Path -LiteralPath $targetPath)) {
            $relativeFile = $file.Substring($RepoRoot.Length).TrimStart("\", "/") -replace "\\", "/"
            $broken.Add([pscustomobject]@{
                File = $relativeFile
                Target = $target
            })
        }
    }
}

if ($broken.Count -gt 0) {
    Write-Host "Broken internal markdown links:" -ForegroundColor Red
    $broken | Format-Table -AutoSize | Out-String | Write-Host
    exit 1
}

if (-not $Quiet) {
    Write-Host "OK: internal markdown links exist ($linkCount links checked, $($files.Count) markdown files)."
}
exit 0
