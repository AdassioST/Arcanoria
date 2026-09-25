<#
.SYNOPSIS
    Bridges Hermes skills into Claude Code's skill index.

.DESCRIPTION
    Claude Code discovers personal skills as  ~/.claude/skills/<name>/SKILL.md
    Hermes stores its skills nested by category, as
        %LOCALAPPDATA%\hermes\skills\<category>\<name>\SKILL.md

    This script creates one NTFS *directory junction* per skill in the Claude
    Code skills folder, flattening the category nesting. Junctions are used
    rather than symlinks because they need no administrator rights and no
    Developer Mode -- `ln -s` and New-Item -ItemType SymbolicLink both do.

    Both agents then read the same SKILL.md bytes: edit a skill once and Hermes
    and Claude Code pick the change up together.

    The reverse direction needs no links at all -- Hermes reads the shared
    Arcanoria skills natively through its skills.external_dirs config setting.

    SAFETY: this only ever removes links recorded in its own manifest. A real
    directory in ~/.claude/skills (a skill you wrote by hand) is never touched
    and never overwritten.

.PARAMETER DryRun
    Report what would change without touching the filesystem.

.PARAMETER IncludeAll
    Ignore the exclusion lists and bridge every Hermes skill.

.EXAMPLE
    powershell -File sync-agent-skills.ps1 -DryRun
    powershell -File sync-agent-skills.ps1
#>
[CmdletBinding()]
param(
    [switch]$DryRun,
    [switch]$IncludeAll
)

$ErrorActionPreference = 'Stop'

# --- Paths -----------------------------------------------------------------
$HermesSkills = Join-Path $env:LOCALAPPDATA 'hermes\skills'
$SharedSkills = 'C:\Arcanoria Master\Arcanoria\.agent-skills'
$ClaudeSkills = Join-Path $env:USERPROFILE '.claude\skills'
$Manifest     = Join-Path $ClaudeSkills '.agent-sync-manifest.json'

# --- Exclusions ------------------------------------------------------------
# Edit freely. Removing a name from a list bridges that skill on the next run.

# Operate on the Hermes runtime itself; meaningless inside Claude Code.
$ExcludeHermesInternal = @(
    'hermes-agent', 'hermes-desktop-plugins', 'hermes-themes',
    'inspecting-hermes-desktop-dom', 'kanban-orchestrator', 'kanban-worker',
    'session-librarian', 'petdex'
)

# Claude Code already ships a native equivalent; bridging these leaves two
# skills competing for the same trigger.
$ExcludeDuplicatesOfNative = @(
    'docx', 'pdf', 'xlsx', 'powerpoint',
    'plan', 'simplify-code',
    'requesting-code-review',
    'claude-code'
)

# Prompt-override / restriction-bypass skills. Claude Code will not act on
# these, so bridging them only adds noise to the skill index.
$ExcludePromptOverride = @(
    'godmode', 'uncensored-mode', 'erotic-writer'
)

$Excluded = $ExcludeHermesInternal + $ExcludeDuplicatesOfNative + $ExcludePromptOverride

# --- Helpers ---------------------------------------------------------------

function Get-SkillFrontmatter {
    param([string]$SkillMdPath)

    $result = @{ Name = $null; Platforms = $null }
    $lines = Get-Content -LiteralPath $SkillMdPath -TotalCount 30 -ErrorAction SilentlyContinue
    if (-not $lines) { return $result }
    if ($lines[0].Trim() -ne '---') { return $result }

    for ($i = 1; $i -lt $lines.Count; $i++) {
        $line = $lines[$i]
        if ($line.Trim() -eq '---') { break }
        if ($line -match '^name:\s*(.+)$') {
            $result.Name = $Matches[1].Trim().Trim([char]34).Trim([char]39)
        }
        elseif ($line -match '^platforms:\s*(.+)$') {
            $result.Platforms = $Matches[1].Trim()
        }
    }
    return $result
}

function Test-IsJunction {
    param([string]$Path)
    if (-not (Test-Path -LiteralPath $Path)) { return $false }
    $item = Get-Item -LiteralPath $Path -Force
    return [bool]($item.Attributes -band [IO.FileAttributes]::ReparsePoint)
}

function New-SkillEntry {
    param($Name, $Source, $Platforms, $Origin)
    return [pscustomobject]@{
        Name = $Name; Source = $Source; Platforms = $Platforms; Origin = $Origin
    }
}

# --- Discover source skills ------------------------------------------------

if (-not (Test-Path -LiteralPath $HermesSkills)) {
    throw "Hermes skills directory not found: $HermesSkills"
}

$candidates = New-Object System.Collections.ArrayList

Get-ChildItem -LiteralPath $HermesSkills -Filter 'SKILL.md' -Recurse -File |
    Where-Object { $_.FullName -notmatch '\\\.curator_backups\\' } |
    ForEach-Object {
        $fm = Get-SkillFrontmatter $_.FullName
        $n  = $fm.Name
        if (-not $n) { $n = $_.Directory.Name }
        [void]$candidates.Add((New-SkillEntry $n $_.Directory.FullName $fm.Platforms 'hermes'))
    }

if (Test-Path -LiteralPath $SharedSkills) {
    Get-ChildItem -LiteralPath $SharedSkills -Filter 'SKILL.md' -Recurse -File |
        ForEach-Object {
            $fm = Get-SkillFrontmatter $_.FullName
            $n  = $fm.Name
            if (-not $n) { $n = $_.Directory.Name }
            [void]$candidates.Add((New-SkillEntry $n $_.Directory.FullName $fm.Platforms 'shared'))
        }
}

# --- Filter ----------------------------------------------------------------

$skipped  = New-Object System.Collections.ArrayList
$selected = New-Object System.Collections.ArrayList
$seen     = @{}

foreach ($c in $candidates) {

    # Shared Arcanoria skills are never filtered.
    if ($c.Origin -ne 'shared' -and -not $IncludeAll) {

        if ($c.Platforms -and $c.Platforms -notmatch 'windows') {
            [void]$skipped.Add([pscustomobject]@{
                Name = $c.Name; Reason = 'not Windows-capable'
            })
            continue
        }

        if ($Excluded -contains $c.Name) {
            $reason = 'Hermes-internal'
            if ($ExcludeDuplicatesOfNative -contains $c.Name) { $reason = 'duplicates a Claude Code native' }
            if ($ExcludePromptOverride -contains $c.Name)     { $reason = 'prompt-override' }
            [void]$skipped.Add([pscustomobject]@{ Name = $c.Name; Reason = $reason })
            continue
        }
    }

    # Flattening collision: keep the first, disambiguate later duplicates.
    $entry = $c
    if ($seen.ContainsKey($entry.Name)) {
        $parent = Split-Path (Split-Path $entry.Source -Parent) -Leaf
        $alt    = '{0}-{1}' -f $entry.Name, $parent
        if ($seen.ContainsKey($alt)) {
            [void]$skipped.Add([pscustomobject]@{ Name = $entry.Name; Reason = 'duplicate name' })
            continue
        }
        $entry = New-SkillEntry $alt $entry.Source $entry.Platforms $entry.Origin
    }

    $seen[$entry.Name] = $true
    [void]$selected.Add($entry)
}

# --- Apply -----------------------------------------------------------------

if (-not (Test-Path -LiteralPath $ClaudeSkills)) {
    if ($DryRun) {
        Write-Host "would create $ClaudeSkills" -ForegroundColor DarkGray
    } else {
        New-Item -ItemType Directory -Path $ClaudeSkills -Force | Out-Null
    }
}

$previous = @()
if (Test-Path -LiteralPath $Manifest) {
    try {
        $previous = @((Get-Content -LiteralPath $Manifest -Raw | ConvertFrom-Json).links)
    } catch {
        $previous = @()
    }
}

$created = 0; $updated = 0; $kept = 0; $removed = 0; $blocked = 0
$written = New-Object System.Collections.ArrayList

foreach ($s in $selected) {
    $link = Join-Path $ClaudeSkills $s.Name

    if (Test-Path -LiteralPath $link) {

        if (-not (Test-IsJunction $link)) {
            Write-Host ('  skip  {0}  (real directory here - not overwriting)' -f $s.Name) -ForegroundColor Yellow
            $blocked++
            continue
        }

        $target = @((Get-Item -LiteralPath $link -Force).Target)[0]
        if ($target -eq $s.Source) {
            $kept++
            [void]$written.Add($s.Name)
            continue
        }

        if ($DryRun) {
            Write-Host ('  would relink {0}' -f $s.Name) -ForegroundColor DarkGray
        } else {
            Remove-Item -LiteralPath $link -Force -Recurse -Confirm:$false
            New-Item -ItemType Junction -Path $link -Target $s.Source | Out-Null
        }
        $updated++
        [void]$written.Add($s.Name)
        continue
    }

    if ($DryRun) {
        Write-Host ('  would link   {0}  ->  {1}' -f $s.Name, $s.Source) -ForegroundColor DarkGray
    } else {
        New-Item -ItemType Junction -Path $link -Target $s.Source | Out-Null
    }
    $created++
    [void]$written.Add($s.Name)
}

# Remove links this script made previously that are no longer selected.
foreach ($old in $previous) {
    if ($written -contains $old) { continue }
    $link = Join-Path $ClaudeSkills $old
    if ((Test-Path -LiteralPath $link) -and (Test-IsJunction $link)) {
        if ($DryRun) {
            Write-Host ('  would unlink {0}' -f $old) -ForegroundColor DarkGray
        } else {
            Remove-Item -LiteralPath $link -Force -Recurse -Confirm:$false
        }
        $removed++
    }
}

if (-not $DryRun) {
    $state = [pscustomobject]@{
        generatedAt = (Get-Date).ToString('o')
        sources     = @($HermesSkills, $SharedSkills)
        links       = @($written)
    }
    $state | ConvertTo-Json -Depth 4 | Out-File -LiteralPath $Manifest -Encoding utf8
}

# --- Report ----------------------------------------------------------------

Write-Host ''
Write-Host 'Agent skill sync' -ForegroundColor Cyan
Write-Host ('  Hermes : {0}' -f $HermesSkills)
Write-Host ('  Shared : {0}' -f $SharedSkills)
Write-Host ('  Target : {0}' -f $ClaudeSkills)
Write-Host ''
Write-Host ('  bridged {0}  (new {1}, relinked {2}, unchanged {3}, unlinked {4})' -f $written.Count, $created, $updated, $kept, $removed) -ForegroundColor Green
if ($blocked -gt 0) {
    Write-Host ('  blocked {0}  (a real folder occupies that name)' -f $blocked) -ForegroundColor Yellow
}
Write-Host ('  skipped {0}' -f $skipped.Count) -ForegroundColor DarkGray

if ($skipped.Count -gt 0) {
    $skipped | Group-Object Reason | Sort-Object Name | ForEach-Object {
        Write-Host ('    {0}:' -f $_.Name) -ForegroundColor DarkGray
        $names = ($_.Group | ForEach-Object { $_.Name } | Sort-Object -Unique) -join ', '
        Write-Host ('      {0}' -f $names) -ForegroundColor DarkGray
    }
}

if ($DryRun) {
    Write-Host ''
    Write-Host '  (dry run - nothing was changed)' -ForegroundColor Yellow
}

Write-Host ''
Write-Host 'Restart Claude Code to pick up skill changes.' -ForegroundColor DarkGray
