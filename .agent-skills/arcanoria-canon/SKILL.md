---
name: arcanoria-canon
description: Canon rules, vault paths, and cross-repo layout for the Arcanoria universe — the Sonata website, the Gateway to Genesis Unity game, and the Obsidian lore vault. Use whenever work touches Arcanoria lore, magic-system mechanics, character design, manuscript prose, or any of the three Arcanoria repositories.
version: 1.0.0
author: Adassio ST
license: proprietary
platforms: [linux, macos, windows]
metadata:
  hermes:
    tags: [arcanoria, canon, worldbuilding, vault, unity, website]
    related_skills: [creative-worldbuilding, creative-writing-vault]
---

# Arcanoria — Shared Canon Skill

Read by **both Hermes and Claude Code**. It is the single source of truth for
where Arcanoria lives and what rules govern changes to it. When Hermes
orchestrates and delegates a task to Claude Code, both sides load this file, so
the constraints below survive the handoff.

## Repository Layout

Three sibling git repositories under `C:\Arcanoria Master\`:

| Path | Remote | Role |
|---|---|---|
| `Arcanoria\` | `AdassioST/Arcanoria` | **Obsidian vault — the canon.** Also hosts this skill. |
| `Sonata Website\` | `AdassioST/Sonata-Website` | Vite/TypeScript reader site for the novel. |
| `GatewayToGenesis_Unity\` | (local) | Unity game project. |

## Vault Rules

- **Vault path:** `C:\Arcanoria Master\Arcanoria` — the git repo **is** the
  Obsidian vault (note the `.obsidian/` folder at its root).
  *Any older reference to a `OneDrive\Escritorio\...` vault path is stale — that
  location no longer exists.*
- **Always re-read vault notes first.** Never answer from recalled conversation;
  ideas are discarded rapidly and only the current vault state is authoritative.
- **Canon = vault content only.**
- **No file edits without an explicit request plus confirmation.** When something
  is inconsistent, flag the exact gap location instead of silently fixing it.
- `Meta Analysis/` and `In-Depth` files are AI-generated (Gemini Deep Research
  and similar) — a secondary analytical lens, **not authoritative canon**.
  Synthesize from them; never echo them as established fact.

### Key locations inside the vault

- `Worldbuilding/` — authoritative worldbuilding notes; **naming here wins** when
  two forms of a term exist.
- `Worldbuilding/Gateway To Genesis.md` — source of the forge dilemma prose.
- `Sonata of the Violet Empress/` — manuscript material.
- `White Agent Scribe/` — the session canon ledger (see below).

## Hard Magic System

All magic **must** adhere to the acoustic ontology: matter is stabilized sound,
magic is crystallized emotion, reality is Resonance.

**Frameworks:** Principles of Magic (7 bindings), Spellweaving chords
(Root / Harmony / Tempo), Soul Leitmotifs, Signal Loss, Auric Heptacode,
Trinity Harmony, Law of Relics.

Generic spells (fireball, teleport, telekinesis) are allowed **only when
mechanically grounded**:

- Telekinesis = Resonance field manipulation
- Wind = Flux fluid dynamics
- Gravity repulsion = soliton polarity inversion
- Spatial warping = Topological Arts bending Auric Geometry

Every proposed ability **must** trace to a specific Spellweaving chord +
element(s) + Soul Leitmotif/Ornament. If a proposal violates acoustic
principles, **flag it as incompatible** and suggest a canon-grounded
alternative. Offer several distinct approaches (different element/chord/tempo
combinations) rather than one.

**Flexibility in method, rigidity in system coherence.** No handwaving, no
generic mana, no elemental schools unmapped to the Principles.

## Iconography Discipline

- Prioritize established symbols — the seven-pointed golden heptagram of the
  Auric Heptacode, and specific character aesthetics (Lacrimosa, the Obsidian
  Empress variant of Amadea).
- When unsure whether a visual or narrative element is still current, **ask.**

## Naming Conventions

Search the vault before creating any `[[keyword]]`. Verified forms:

**With "The":** `[[The Eternal Symphony]]`, `[[The First Overtone]]`,
`[[The Hollowing]]`, `[[The White-Haven Library]]`,
`[[The White-Touched Archivist]]`, `[[The Principles of Magic]]`

**Without "The":** `[[Auric Heptacode]]`, `[[Trinity Harmony]]`,
`[[Law of Relics]]`, `[[Stellar Veil]]`, `[[Lost Cycle]]`, `[[First Reset]]`,
`[[Known Universe]]`, `[[Great Harmonic Loom]]`, `[[Signal Loss]]`,
`[[Motif Awakening]]`, `[[Atonalis]]`, `[[Spellweaving]]`, `[[Soul Leitmotif]]`

If two forms exist, prefer the one used in `Worldbuilding/`. If uncertain, ask.

## The White Agent Scribe — Session Canon Ledger

Folder: `White Agent Scribe/` inside the vault. It is a meta-librarian record of
session work — structured extractions, never raw chat logs.

- `Canon_Ledger/` — authoritative rules (Acoustic_Ontology.md, Symbology.md, …)
- `Session_Extracts/` — what was decided each session
- `Continuity_Notes/` — cross-references and gap flags
- `Discarded_Ideas/` — rejected concepts; do not reuse without direction
- `Reference_Docs/` — taxonomy and indexing guides

Rules: never dump conversations, always `[[wikilink]]` into existing content,
flag gaps rather than fabricating, and get author confirmation before writing.

## Brainstorming Protocol — Plot Holes & Gaps

**Never propose retcons.** Established canon is an immutable constraint. To
resolve a gap, offer **three forward-facing pathways**:

1. **Mechanistic** — from established limits, loopholes, or edge cases of the
   acoustic ontology (resonance interference, dissonant frequencies, overlapping
   Soul Sheet Music).
2. **Character-Driven** — leveraging an established fatal flaw, hidden
   motivation, or unseen reaction.
3. **Lore Expansion** — a new, highly localized constraint, historical
   precedent, or faction agenda that bridges the conflict without breaking
   surrounding lore.

For each pathway, list the canonical `[[Notes]]` anchoring the logic and
summarize exactly what new information would need to be written into the vault
if approved. Treat all three as equally valid; let the author choose.

## Cross-Agent Handoff

When Hermes delegates implementation to Claude Code:

- The delegated prompt should name the target repo explicitly (paths above).
- **Prose is copied, never paraphrased.** Manuscript and dilemma text must match
  the vault character for character.
- Code work belongs in the Sonata Website / Unity repos; **canon changes belong
  in the vault and need explicit confirmation.**
- Derived content in the website repo (e.g. `src/content/act*`) is generated
  from vault manuscripts — edit the vault source, not the derived file.
