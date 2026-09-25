# Agent Bridge — Hermes ↔ Claude Code

Wiring that lets Hermes orchestrate and Claude Code implement, over one shared
set of skills, across all three Arcanoria repositories.

## What is where

| Thing | Path |
|---|---|
| Shared skills (both agents) | `Arcanoria\.agent-skills\` |
| These scripts | `Arcanoria\.agent-tools\` |
| Hermes' own skills | `%LOCALAPPDATA%\hermes\skills\` |
| Claude Code's skill index | `%USERPROFILE%\.claude\skills\` |
| `claude` PATH shim | `%LOCALAPPDATA%\hermes\bin\claude.cmd` |

## How the two directions work

They are **not** symmetric, because the two agents discover skills differently.

**Hermes → shared skills:** native. Hermes has a `skills.external_dirs` config
key, so it reads `.agent-skills\` directly. No links involved.

```bash
hermes config get skills.external_dirs
```

**Claude Code → Hermes skills:** by junction. Claude Code expects a flat
`~/.claude/skills/<name>/SKILL.md`, while Hermes nests skills under category
folders. `sync-agent-skills.ps1` creates one NTFS directory junction per skill,
flattening the nesting.

Junctions, not symlinks: `New-Item -ItemType SymbolicLink` and `ln -s` both need
administrator rights or Developer Mode on Windows. Junctions need neither.

Because a junction points at the original folder, both agents read the same
`SKILL.md` bytes — edit a skill once and both pick the change up.

## Scripts

```bash
powershell -File "C:\Arcanoria Master\Arcanoria\.agent-tools\check-agent-bridge.ps1"
```

Health check — verifies the shim, CLI auth, Hermes config, and every junction.
Changes nothing. Run this first when something feels off.

```bash
powershell -File "C:\Arcanoria Master\Arcanoria\.agent-tools\sync-agent-skills.ps1"
```

Rebuilds the junctions. Idempotent. Run it after installing a Hermes skill,
adding a shared skill, or if the health check reports broken links.
Add `-DryRun` to preview, `-IncludeAll` to bypass the exclusion lists.

**Restart Claude Code after a sync** — the skill index is read at session start.

## What is bridged

82 of 113 Hermes skills, plus the shared Arcanoria skills. The rest are skipped
by four rules at the top of `sync-agent-skills.ps1`, all editable:

- **not Windows-capable** — the skill's own frontmatter declares macOS/Linux only
- **Hermes-internal** — operates on the Hermes runtime (themes, desktop plugins, kanban)
- **duplicates a Claude Code native** — would fight an existing skill for the same trigger
- **prompt-override** — Claude Code will not act on these anyway

Skills are never bridged over a real folder in `~/.claude/skills`, and the sync
only removes links recorded in its own manifest, so hand-written skills there
are safe.

## Adding a skill both agents should have

Create `Arcanoria\.agent-skills\<name>\SKILL.md` with YAML frontmatter:

```markdown
---
name: <name>
description: <one line — this is what decides when the skill triggers>
---

# Instructions
...
```

Hermes picks it up immediately. Run `sync-agent-skills.ps1` for Claude Code.

Keep `name` identical to the folder name, and write the `description` as *when
to use this*, not just what it is — both agents match against that line.

## Per-project skills

For rules that belong to one repo rather than the whole universe, both agents
support repo-local skills:

- Claude Code: `<repo>\.claude\skills\<name>\SKILL.md`
- Hermes: `<repo>\.agents\skills\<name>\SKILL.md`, after `hermes skills trust <repo>`

Use these for things like Unity C# conventions or the website's build pipeline.
Use `.agent-skills\` for anything that holds true across the universe.

## Delegation

Hermes calls Claude Code through the PATH shim:

```bash
claude -p "<task>" --allowedTools "Read,Edit" --max-turns 10
```

The shim resolves whichever CLI version the Claude desktop app currently
bundles, so desktop updates do not break it.

`claude -p` **exits 0 even when not authenticated** — it prints
`Not logged in` and does nothing. Check `claude auth status` (JSON, wants
`"loggedIn": true`) before trusting a delegated result. `check-agent-bridge.ps1`
does this for you.

See the `arcanoria-delegation` skill for the full handoff playbook.
