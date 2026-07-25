param(
    [string]$RepoRoot = (Split-Path -Parent $PSScriptRoot),
    [string[]]$Extensions = @("*.md", "*.ps1"),
    [string]$MojibakePattern,
    [switch]$Quiet
)

$ErrorActionPreference = "Stop"
if ([string]::IsNullOrWhiteSpace($MojibakePattern)) {
    $mojibakeChars = @([char]0x00D0, [char]0x00D1, [char]0x00E2, [char]0xFFFD)
    $MojibakePattern = (($mojibakeChars | ForEach-Object { [regex]::Escape([string]$_) }) -join "|")
}

$utf8Strict = New-Object System.Text.UTF8Encoding($false, $true)
$issues = New-Object System.Collections.Generic.List[object]

$files = foreach ($extension in $Extensions) {
    Get-ChildItem -LiteralPath $RepoRoot -Recurse -File -Filter $extension |
        Where-Object { $_.FullName -notmatch "[\\/]\.git[\\/]" }
}

foreach ($file in ($files | Sort-Object FullName -Unique)) {
    $relative = $file.FullName.Substring($RepoRoot.Length).TrimStart("\", "/") -replace "\\", "/"
    try {
        $bytes = [System.IO.File]::ReadAllBytes($file.FullName)
        $text = $utf8Strict.GetString($bytes)
        $match = [regex]::Match($text, $MojibakePattern)
        if ($match.Success) {
            $issues.Add([pscustomobject]@{
                File = $relative
                Issue = "Possible mojibake"
                Sample = "U+{0:X4}" -f [int][char]$match.Value[0]
            })
        }
    }
    catch {
        $issues.Add([pscustomobject]@{
            File = $relative
            Issue = "Invalid UTF-8"
            Sample = $_.Exception.Message
        })
    }
}

if ($issues.Count -gt 0) {
    Write-Host "Encoding issues found:" -ForegroundColor Red
    $issues | Format-Table -AutoSize | Out-String | Write-Host
    exit 1
}

if (-not $Quiet) {
    Write-Host "OK: UTF-8 decode and mojibake checks passed ($($files.Count) files)."
}
exit 0
