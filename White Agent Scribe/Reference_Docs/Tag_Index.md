---
type: reference-doc
classification: Tag Index & Classification System
created: 2026-06-08
updated: 2026-06-08
author: [[The White Agent Scribe]]
status: active
tags: [reference, taxonomy, tags, classification, indexing]
---

# Tag Index & Classification System

> Reference document for the [[Arcanoria]] vault. Maps all tags, types, and classification systems used across the vault so that [[The White Agent Scribe]] and the author can sort, cross-reference, and retrieve information consistently.

---

## 1. Document Types (Frontmatter `type:`)

The White Agent Scribe uses these `type:` values in YAML frontmatter to classify its own documents:

| Type | Purpose | Folder |
|---|---|---|
| `canon-ledger` | Authoritative rules, decisions, facts | `Canon_Ledger/` |
| `session-extract` | Structured summary of a session's decisions/discoveries | `Session_Extracts/` |
| `continuity-note` | Cross-references, gap flags, consistency checks | `Continuity_Notes/` |
| `discarded-ideas` | Explored and rejected concepts | `Discarded_Ideas/` |
| `reference-doc` | Taxonomy, indexing, and classification guides (this file) | `Reference_Docs/` |

Existing vault files use:
| Type | Count | Used By |
|---|---|---|
| `canon-ledger` | 3 | White Agent Scribe |
| `continuity-note` | 1 | White Agent Scribe |
| `discarded-ideas` | 1 | White Agent Scribe |
| `session-extract` | 1 | White Agent Scribe |

---

## 2. Content Tags (Inline `#tags`)

Tags found across the vault, grouped by domain. These are used inline within file content (not YAML frontmatter).

### 2A. Magic & Mechanics
| Tag | Frequency | Meaning |
|---|---|---|
| `#spellweaving` | 117 | Magic system mechanics, casting, chords |
| `#mechanic` | 33 | Game/system mechanics |
| `#acoustic-ontology` | 1 | Matter = sound, magic = emotion, reality = resonance |
| `#core-rules` | 1 | Foundational magic rules |

### 2B. World & Setting
| Tag | Frequency | Meaning |
|---|---|---|
| `#chaos` | 83 | Chaos, disorder, entropy, Flux-related |
| `#technology` | 84 | Technology, inventions, tools |
| `#society` | 40 | Social structures, organizations, civilization |
| `#religion` | 32 | Religious systems, worship, theology |
| `#faith` | 30 | Faith, belief, spiritual conviction |
| `#creature` | 20 | Creatures, beasts, fauna |
| `#deity` | 18 | Gods, divine beings |
| `#resource` | 16 | Resources, materials, economics |
| `#event` | 8 | Historical or world events |
| `#age` | 8 | Ages, eras, time periods |
| `#landmark` | 8 | Locations, landmarks, geography |
| `#crisis` | 6 | Crises, catastrophes, turning points |
| `#biome` | 4 | Biomes, environmental zones |
| `#settlement` | 2 | Settlements, cities, enclaves |

### 2C. Narrative & Characters
| Tag | Frequency | Meaning |
|---|---|---|
| `#character` | 62 | Character profiles, traits, arcs |
| `#story` | 45 | Narrative, plot, story beats |
| `#amadea` | 1 | Amadea-specific content |
| `#soul-leitmotif` | 1 | Soul Leitmotif discussions |
| `#music` | 1 | Musical analysis, leitmotifs |
| `#character-analysis` | 1 | Character analysis sessions |

### 2D. Visual & Symbolic
| Tag | Frequency | Meaning |
|---|---|---|
| `#symbology` | 1 | Symbols, iconography |
| `#iconography` | 1 | Visual motifs, design language |
| `#visual-motifs` | 1 | Visual/aesthetic motifs |

### 2E. Truths & Metaphysics
| Tag | Frequency | Meaning |
|---|---|---|
| `#scorchingtruth` | 18 | Inescapable truths, cosmic revelations |

### 2F. White Agent Scribe Internal
| Tag | Frequency | Meaning |
|---|---|---|
| `#continuity` | 1 | Continuity tracking |
| `#gaps` | 1 | Plot holes, missing information |
| `#consistency` | 1 | Consistency checks |
| `#discarded` | 1 | Discarded ideas |
| `#archived` | 1 | Archived content |
| `#reference` | 1 | Reference documents |
| `#taxonomy` | 1 | Classification system |
| `#analysis` | 2 | Analysis work |

### 2G. Other
| Tag | Frequency | Meaning |
|---|---|---|
| `#umamusume` | 2 | Reference to Uma Musume (likely mood/inspiration) |
| `#001`, `#005`, `#012`, `#019` | 1 each | Unknown — likely character or event IDs |

---

## 3. Vault Folder Structure (Classification by Location)

The vault uses **folder hierarchy** as its primary classification system. This is the canonical way to find content.

### Top-Level Folders
| Folder | Files | Domain |
|---|---|---|
| `Worldbuilding/` | 340 | Primary canon source — all world lore |
| `Sonata of the Violet Empress/` | 23 | Campaign/narrative content |
| `Game Systems/` | 8 | Game mechanics and systems |
| `White Agent Scribe/` | 6 | AI-assisted canon documentation |
| `merged/` | 1 | Merged/compiled documents |

### Worldbuilding Subfolders
| Folder | Files | Domain |
|---|---|---|
| `Origin of Magic/` | 110 | Magic system, principles, spellweaving |
| `Society/` | 96 | Characters, organizations, weapons, relics |
| `Rise & Fall, Crisis/` | 58 | Ages, crises, historical events |
| `Truths, Chaos, Rituals/` | 34 | Cosmic truths, rituals, forbidden objects |
| `Mythology/` | 20 | Deities, creation myths |
| `World Environment/` | 14 | Geography, landmarks, bestiary |
| `Events/` | 7 | World events |

### Society Subfolders
| Folder | Files | Domain |
|---|---|---|
| `Characters/` | ~30 | Character profiles (by Age) |
| `Auric Order/` | ~5 | The Auric Order organization |
| `Stellar Legacy/` | ~15 | Legend system, traits, fragments |
| `Weapons, Instruments & Relics/` | ~10 | Equipment, instruments, world-bending objects |
| `Tools & Inventions/` | ~5 | Technology, tools |
| `Societal Resources/` | ~5 | Resources, civic systems |

---

## 4. Frontmatter Fields Reference

All documents in the vault use YAML frontmatter. These fields are in use:

| Field | Used By | Purpose |
|---|---|---|
| `type:` | White Agent Scribe | Document classification (see §1) |
| `classification:` | White Agent Scribe | Human-readable category |
| `author:` | White Agent Scribe | Author entity |
| `created:` | White Agent Scribe | Creation date |
| `updated:` | White Agent Scribe | Last modification date |
| `status:` | White Agent Scribe | `active` / `archived` / `draft` |
| `tags:` | White Agent Scribe | YAML tag array |
| `date:` | Session extracts | Session date |

---

## 5. How to Use This System

### For the Author
- **To find something**: Check the folder structure first (§3), then search by tag (§2)
- **To classify a new file**: Place it in the matching Worldbuilding subfolder
- **To tag content**: Use existing tags from §2; add new ones sparingly
- **To request Scribe work**: Reference the `type:` values from §1

### For [[The White Agent Scribe]]
- **Always check folder location first** — it's the primary classifier
- **Use existing tags** from §2 when creating new documents
- **Use `type:` frontmatter** for all Scribe-created documents
- **Cross-reference** using `[[wikilinks]]` to connect to existing vault content
- **When uncertain about classification**, ask before writing

### Tag Naming Rules
- Use **lowercase** with **hyphens** for multi-word tags: `#soul-leitmotif`, `#character-analysis`
- **No spaces** in tags: `#visual-motifs` not `#visual motifs`
- Prefer **existing tags** over creating new ones
- New tags should be **domain-specific** and **reusable**

---

## 6. Wikilink Naming Convention (Cross-Reference)

> See also: [[The White Agent Scribe]] README for full naming rules.

**WITH "The":**
[[The Eternal Symphony]], [[The First Overtone]], [[The Hollowing]], [[The White-Haven Library]], [[The White-Touched Archivist]], [[The Principles of Magic]]

**WITHOUT "The":**
[[Auric Heptacode]], [[Trinity Harmony]], [[Law of Relics]], [[Stellar Veil]], [[Lost Cycle]], [[First Reset]], [[Known Universe]], [[Great Harmonic Loom]], [[Signal Loss]], [[Motif Awakening]], [[Atonalis]], [[Spellweaving]], [[Soul Leitmotif]]

**Rule**: Always search the Worldbuilding folder first. If two forms exist, the Worldbuilding folder wins.

---

_"A well-ordered library is a well-ordered mind."_
— [[The White-Touched Archivist]]
