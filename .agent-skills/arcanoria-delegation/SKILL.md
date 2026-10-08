---
name: arcanoria-delegation
description: How Hermes hands implementation work to Claude Code on this Windows machine — print-mode invocation, per-repo working directories, tool permissions, and what context must travel with the handoff. Use when Hermes is orchestrating an Arcanoria task and needs to delegate coding, refactoring, or file changes to Claude Code.
version: 1.0.0
author: Adassio ST
license: proprietary
platforms: [windows]
metadata:
  hermes:
    tags: [delegation, orchestration, claude-code, arcanoria, windows]
    related_skills: [arcanoria-canon, claude-code]
---

# Arcanoria — Hermes → Claude Code Delegation

Machine-specific playbook for this Windows setup. It overrides the generic
`claude-code` skill wherever the two disagree — in particular, **the tmux
orchestration described there does not apply here.** Windows has no tmux;
use print mode.

## Invocation

`claude` resolves through a shim on PATH at
`%LOCALAPPDATA%\hermes\bin\claude.cmd`, which locates the CLI that the Claude
desktop app bundles under a version-pinned directory. Never hardcode a
versioned path — it changes on every desktop-app update.

Delegate with **print mode** (`-p`): one shot, no interactive prompts, clean
exit.

```
terminal(
  command='claude -p "<task>" --allowedTools "Read,Edit,Write,Bash" --max-turns 15',
  workdir="C:\\Arcanoria Master\\Sonata Website",
  timeout=600
)
```

### Preflight

`claude -p` **exits 0 even when it is not logged in**, printing
`Not logged in - Please run /login` instead of doing the work. Never treat
exit 0 alone as success. Check first:

```
claude auth status
```

It returns JSON; require `"loggedIn": true`. The bridge health check
(`.agent-tools\check-agent-bridge.ps1`) covers this and the rest of the wiring.

## Working Directory Is the Contract

Always pass an explicit `workdir`. It decides which repo Claude Code touches
and which project-level config it loads.

| Task | workdir |
|---|---|
| Reader site, components, styles, i18n | `C:\Arcanoria Master\Sonata Website` |
| Unity game, C# scripts, scenes | `C:\Arcanoria Master\GatewayToGenesis_Unity` |
| Lore, manuscripts, canon ledger | `C:\Arcanoria Master\Arcanoria` |

## What Must Travel With the Handoff

Claude Code starts cold. It does **not** inherit the Hermes conversation, so
the delegated prompt has to carry the decisions.

Include:

1. **The concrete goal**, stated as an outcome, not a hint.
2. **Files or areas already identified** — spare it a re-search you already did.
3. **Canon constraints that bind the change** — the relevant rule from
   `arcanoria-canon`, not a pointer to "the canon".
4. **Whether prose is involved.** If the task copies manuscript or dilemma
   text, say *copy character for character from `<vault path>`* — paraphrase
   is a canon violation.
5. **How to verify** — the test, script, or command that proves it worked.

Both agents load `arcanoria-canon`, so you can reference its rules by name
rather than restating them in full.

When the delegation continues an interrupted task, open the prompt with the
`RESUME:` header from `arcanoria-handoff` (section 8) and pass the previous
agent's log verbatim; the receiving agent follows that skill to rebuild the
state from disk before editing.

## Tool Permissions

Print mode skips interactive permission prompts, so `--allowedTools` is the
real boundary. Grant the minimum:

| Task shape | allowedTools |
|---|---|
| Read-only analysis, review, audit | `Read,Grep,Glob` |
| Editing existing files | `Read,Edit,Grep,Glob` |
| Creating files, running builds/tests | `Read,Edit,Write,Bash,Grep,Glob` |

Do not grant `Bash` for tasks that only need to read or edit text.

## Boundaries

- **Never delegate a canon change.** Vault edits need the author's explicit
  confirmation (see `arcanoria-canon`). Delegate *reads* of the vault freely;
  route proposed writes back to the author.
- **Never delegate `git push`, PR creation, or deploys.** Let Claude Code
  commit locally at most, and only when the task asked for it.
- **One repo per delegation.** A task spanning the site and the game is two
  delegations with two working directories, not one with a wandering `cd`.
- `--max-turns` is a runaway guard, not a quality dial. Raise it for genuinely
  multi-file work; do not remove it.

## Returning Results

Print mode writes the final message to stdout. For structured results that
Hermes needs to parse, ask for a specific shape in the prompt, or use
`--output-format json`. Capture stderr too — that is where the shim and auth
failures surface.
