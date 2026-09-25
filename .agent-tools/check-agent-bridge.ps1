<#
.SYNOPSIS
    Health check for the Hermes <-> Claude Code bridge.

.DESCRIPTION
    Verifies every moving part of the integration and reports what is broken
    and how to fix it. Safe to run any time; it changes nothing.

.EXAMPLE
    powershell -File check-agent-bridge.ps1
#>
[CmdletBinding()]
param()

$SharedSkills = 'C:\Arcanoria Master\Arcanoria\.agent-skills'
$ClaudeSkills = Join-Path $env:USERPROFILE '.claude\skills'
$HermesSkills = Join-Path $env:LOCALAPPDATA 'hermes\skills'
$Manifest     = Join-Path $ClaudeSkills '.agent-sync-manifest.json'

$fail = 0
$warn = 0

function Report {
    param([string]$State, [string]$Label, [string]$Detail, [string]$Fix)
    $color = 'Green'; $mark = 'OK  '
    if ($State -eq 'fail') { $color = 'Red';    $mark = 'FAIL' }
    if ($State -eq 'warn') { $color = 'Yellow'; $mark = 'WARN' }
    Write-Host ('  [{0}] {1}' -f $mark, $Label) -ForegroundColor $color
    if ($Detail) { Write-Host ('         {0}' -f $Detail) -ForegroundColor DarkGray }
    if ($Fix)    { Write-Host ('         fix: {0}' -f $Fix) -ForegroundColor DarkGray }
}

Write-Host ''
Write-Host 'Hermes <-> Claude Code bridge' -ForegroundColor Cyan
Write-Host ''

# 1. claude on PATH -----------------------------------------------------------
$cmd = Get-Command claude -ErrorAction SilentlyContinue
if ($cmd) {
    $ver = (& claude --version 2>&1 | Out-String).Trim()
    if ($LASTEXITCODE -eq 0 -and $ver) {
        Report 'ok' 'claude resolves on PATH' ('{0}  ({1})' -f $ver, $cmd.Source)
    } else {
        Report 'fail' 'claude on PATH but will not run' $ver 'check %LOCALAPPDATA%\hermes\bin\claude.cmd'
        $fail++
    }
} else {
    Report 'fail' 'claude not on PATH' 'Hermes cannot delegate' 'restore the shim at %LOCALAPPDATA%\hermes\bin\claude.cmd'
    $fail++
}

# 2. CLI auth -----------------------------------------------------------------
if ($cmd) {
    $status = (& claude auth status 2>&1 | Out-String)
    $loggedIn = $false
    try { $loggedIn = ([bool](($status | ConvertFrom-Json).loggedIn)) } catch { $loggedIn = $false }
    if ($loggedIn) {
        Report 'ok' 'Claude Code CLI is authenticated'
    } else {
        Report 'fail' 'Claude Code CLI is NOT authenticated' `
            'claude -p exits 0 and does nothing in this state' `
            'run:  claude auth login   (one time, in a normal terminal)'
        $fail++
    }
}

# 3. Hermes reads the shared skills ------------------------------------------
$hermesCmd = Get-Command hermes -ErrorAction SilentlyContinue
if ($hermesCmd) {
    $ext = (& hermes config get skills.external_dirs 2>&1 | Out-String)
    if ($ext -match [regex]::Escape('.agent-skills')) {
        Report 'ok' 'Hermes reads the shared skills directory' ($ext.Trim())
    } else {
        Report 'fail' 'Hermes external_dirs does not include the shared directory' ($ext.Trim()) `
            ('run:  hermes config set skills.external_dirs ' + [char]34 + '["C:/Arcanoria Master/Arcanoria/.agent-skills"]' + [char]34)
        $fail++
    }
} else {
    Report 'warn' 'hermes not on PATH' 'cannot verify the Hermes side' ''
    $warn++
}

# 4. Shared skills exist ------------------------------------------------------
if (Test-Path -LiteralPath $SharedSkills) {
    $shared = @(Get-ChildItem -LiteralPath $SharedSkills -Filter 'SKILL.md' -Recurse -File)
    if ($shared.Count -gt 0) {
        $names = ($shared | ForEach-Object { $_.Directory.Name } | Sort-Object) -join ', '
        Report 'ok' ('shared skills present ({0})' -f $shared.Count) $names
    } else {
        Report 'warn' 'shared skills directory is empty' $SharedSkills ''
        $warn++
    }
} else {
    Report 'fail' 'shared skills directory missing' $SharedSkills 'recreate it, or update the path in these scripts'
    $fail++
}

# 5. Junctions into Claude Code ----------------------------------------------
if (Test-Path -LiteralPath $ClaudeSkills) {
    $all = @(Get-ChildItem -LiteralPath $ClaudeSkills -Directory -Force)
    $links = @($all | Where-Object { $_.Attributes -band [IO.FileAttributes]::ReparsePoint })
    $broken = @($links | Where-Object { -not (Test-Path -LiteralPath (Join-Path $_.FullName 'SKILL.md')) })

    if ($links.Count -eq 0) {
        Report 'fail' 'no bridged skills in the Claude Code skills folder' $ClaudeSkills 'run: sync-agent-skills.ps1'
        $fail++
    } elseif ($broken.Count -gt 0) {
        Report 'fail' ('{0} of {1} junctions are broken' -f $broken.Count, $links.Count) `
            (($broken | ForEach-Object { $_.Name }) -join ', ') 'run: sync-agent-skills.ps1'
        $fail++
    } else {
        $own = $all.Count - $links.Count
        $detail = '{0} bridged' -f $links.Count
        if ($own -gt 0) { $detail = '{0}, {1} hand-written' -f $detail, $own }
        Report 'ok' 'Claude Code skill junctions resolve' $detail
    }
} else {
    Report 'fail' 'Claude Code skills folder missing' $ClaudeSkills 'run: sync-agent-skills.ps1'
    $fail++
}

# 6. Drift between Hermes and the bridge -------------------------------------
if ((Test-Path -LiteralPath $Manifest) -and (Test-Path -LiteralPath $HermesSkills)) {
    $sourceCount = @(Get-ChildItem -LiteralPath $HermesSkills -Filter 'SKILL.md' -Recurse -File |
        Where-Object { $_.FullName -notmatch '\\\.curator_backups\\' }).Count
    try {
        $m = Get-Content -LiteralPath $Manifest -Raw | ConvertFrom-Json
        $synced = @($m.links).Count
        $when   = ([datetime]$m.generatedAt).ToString('yyyy-MM-dd HH:mm')
        Report 'ok' 'sync manifest readable' ('{0} bridged of {1} Hermes skills, last synced {2}' -f $synced, $sourceCount, $when)
    } catch {
        Report 'warn' 'sync manifest unreadable' $Manifest 'run: sync-agent-skills.ps1'
        $warn++
    }
}

# --- Summary ----------------------------------------------------------------
Write-Host ''
if ($fail -gt 0) {
    Write-Host ('  {0} check(s) failed.' -f $fail) -ForegroundColor Red
} elseif ($warn -gt 0) {
    Write-Host ('  Bridge is up, with {0} warning(s).' -f $warn) -ForegroundColor Yellow
} else {
    Write-Host '  Bridge is fully up.' -ForegroundColor Green
}
Write-Host ''
