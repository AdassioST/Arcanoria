---
name: arcanoria-registers
description: Drafting and extending The Registers of Magic — Arcanoria's Spellweaving taxonomy — at any level (tessitura, register, subset, niche). Covers placement in the taxonomy, chord construction, the file's exact line format, and its prose conventions. Use whenever a magic idea, a Gateway to Genesis backlog item, or a rough mechanic needs to become a taxonomy entry, be slotted into a tessitura, or be expanded into subsets and niches — including when the author simply describes an ability and asks where it belongs.
version: 1.0.0
author: Adassio ST
license: proprietary
platforms: [linux, macos, windows]
metadata:
  hermes:
    tags: [arcanoria, spellweaving, taxonomy, registers, worldbuilding, magic-system]
    related_skills: [arcanoria-canon, arcanoria-delegation, arcanoria-voice, creative-worldbuilding, creative-writing-vault]
---

# Arcanoria — The Registers of Magic

This skill governs one file and the discipline of adding to it:

    Worldbuilding\Origin of Magic\Spellweaving\The Registers of Magic.md

A new entry is not a description of a good idea. It is a claim about where that
idea sits relative to 113KB of accreted canon, and most of the work is placement
and mechanism rather than prose.

## What the rest of the stack already owns

Per the handoff convention, the rules below are referenced by name, never
restated. This skill adds only what is specific to the taxonomy.

`creative-worldbuilding` and `creative-writing-vault` supply the generic policy
layer — read-before-answering, read-only vault, content classification,
gap-flagging, hard-magic grounding. `arcanoria-voice` governs how sentences and
documents are built. `arcanoria-canon` narrows all of it to Arcanoria and owns:

- vault path and the **always re-read the current file first** rule — the author
  edits in Obsidian between turns, so any copy from an earlier turn is stale
- **wikilink naming verification** — search `Worldbuilding/` before creating any
  `[[keyword]]`; Worldbuilding naming wins
- **no vault write without explicit request plus confirmation** — draft, then the
  author confirms
- the acoustic ontology, and the rule that every ability traces to a specific
  chord + element(s) + Soul Leitmotif/Ornament
- the three-pathway protocol when a gap or contradiction shows up

When an entry's placement or mechanism is disputed, `creative-worldbuilding`'s
**Backlog Triage Protocol (Ledger Audit)** is the procedure for settling it
against live vault state — file exists / non-empty / used vault-wide — with its
STALE / EMPTY SHELL / BULLET-WITHOUT-HOME / CONFLICT classification. Use it
rather than improvising an audit.

## Step 1 — Place it

The file's own four questions decide the level. Answer them in order:

- **Tessitura** — which binding governs the root of the chord?
- **Register** — what problem does this family of spells exist to solve?
- **Subset** — which characteristic of the register is being mastered?
- **Niche** — what exactly does the [[Spellweaver]] do with their hands?

The root is decided by **intent, not mechanism** — the single most common
placement error. Divination reaches the future through [[Crystal]], but every
divinatory spell is cast in order to see clearly, so it files under
[[Luminance]]. Ask what the practitioner is *for*, not what physics they borrow.

Read the whole target tessitura before drafting. An entry written without its
neighbours in view duplicates an existing Art or contradicts one, and that error
propagates into the game design doc and the manuscript.

When the idea could sit in two places, give the argument for each instead of
silently choosing. Those disagreements are canon in themselves — the file
already stages the [[Dimensional Arts]] and divination debates on purpose — and
the author may want the tension written into the prose.

## Step 2 — Build the chord

The parenthesis is `([[Root]] + [[Minor]] + [[Minor]])`. First binding is the
[[Major Note]] Root; the rest are [[Minor Note]]s that color it. The seven:
[[Resonance]], [[Luminance]], [[Flux]], [[Void]], [[Cindergale]], [[Crystal]],
[[Strand]].

**Test every binding: if the gloss cannot say what that binding does, it does not
belong in the chord.** Chords here are load-bearing, not decorative — in
[[Seismic Arts]], [[Crystal]] picks the lattice that carries the impulse and
[[Void]] decides where it is allowed to surface. A four-binding chord is
legitimate only when each addition does something the others cannot.

**Five bindings are not a chord — they are a layering.** A pentachord cannot be
cast; binding five elements at once is musical nonsense and will not hold. The
set is instead played as two triads sharing a common tone as the pivot — A–B–C
layered with C–D–E, joined at C — and because a triad is naturally stable, the
pair carries what the single chord could not. This is Chord Layering, the
technique [[Luminaire]] discovered. So when an entry needs five bindings, name
the two triads and the pivot binding that joins them rather than listing five in
one parenthesis. [[Dimensional Arts]] is the taxonomy's only five-binding entry
and should be read this way — which two triads and which pivot is an open
question for the author, not a call to make while drafting.

A child's chord need not contain its parent's. [[Handball Arts]] adds [[Flux]]
and [[Crystal]] to [[Rebound Arts]]' [[Resonance]] + [[Cindergale]] because the
[[Knell]] itself needs them.

> **Known vocabulary gap — flag, do not fix.** `arcanoria-canon` describes
> Spellweaving chords as Root / Harmony / Tempo, while this file uses
> [[Major Note]] Root + [[Minor Note]]s. Worldbuilding naming wins, so write
> Major/Minor here; raise the discrepancy with the author rather than editing
> `arcanoria-canon` unilaterally.

## Step 3 — Format

One line per entry, indented by tab depth: register at top level, subset one in,
niche two in. Blank line between entries.

    - [[Name]] ([[Root]] + [[Minor]]) — Register of <what problem it solves>. <mechanism>.

    	- [[Name]] ([[Root]] + [[Minor]]) — Subset of <trait being mastered>. <mechanism>.

    		- [[Name]] ([[Root]] + [[Minor]]) — Niche of <what the hands do>. <mechanism>.

Open with the category word — "Register of", "Subset of", "Niche of" — because
that is how a student parses the level without counting indents. Close with a
bold marker when the [[Ages]] matter: **(Requires [[Law of Relics]])** for a
practice that cannot hold together on live casting alone,
**(Greatly Enhanced after [[Law of Relics]])** for one that merely improved from
[[Ages]] IV.

The gloss is one unbroken paragraph. No internal bullets, no line breaks — the
nesting carries the structure, and a broken gloss breaks the outline.

## Step 4 — The moves that make it read as canon

These recur throughout the taxonomy:

1. **Give each binding its job by name.** "[[Luminance]] finds the seam,
   [[Crystal]] reads how the lattice is holding itself together, and
   [[Cindergale]] keeps the impulse coming until it stops holding."

2. **Define by contrast with a named sibling.** [[Rebound Arts]] against
   [[Chamber Arts]] and [[Cadence Arts]]; [[Amphitheater Arts]] as "the exact
   mirror of [[Fortification Arts]]"; [[Distortion Arts]] as "the mirror of
   [[Silence Arts]]". Convergence is a stated principle of the system — two
   [[Spellweaver]]s reaching one result from different roots — so contrast is not
   filler, it is the taxonomy explaining itself.

3. **State the cost or the limit.** Every practice fails somewhere, and the
   failure is usually the most interesting sentence. "A single missed beat ends
   it." "It cures nothing. It buys the time in which a cure can be found." An
   entry with no limit reads as a power, not an Art.

4. **Name the first lesson** when a practice is counterintuitive to learn — "the
   first lesson is not how to hit but how to stop stopping the blow." It converts
   mechanism into pedagogy, which is what a register is for.

5. **Give it a legible tell** where one exists: the [[Knell]] running clear cyan
   while vacant and refracting deeper pink with every layer it takes. A visible
   state makes the mechanic usable in prose and in the game without exposition.

6. **Anchor a concrete use** when there is a real one — flight and mountain
   rescue in the [[Crescent Mist Peaks]], scaffolding and ferry planks over
   [[Vibrational Fallout]]. Named place, named practice.

Present tense, declarative, no hedging. The file states how the world works.

These six are taxonomy-specific and sit *on top of* `arcanoria-voice`, which owns
sentence mechanics generally — weight over feeling, the anticlimactic landing, the
em-dash cadence, in-world units (Beats, Bars, Pulses, never seconds or meters),
and the Anti-Slop audit. Register glosses are the treatise register, closest to
the `Soliton.md` voice source; run the audit on them before delivery.

## Rules

- **No speculative institutional or social asides.** Guilds, economies, political
  structures, how a society would regulate the practice, "scholars debate
  whether…" — these get cut on revision every time, so do not write them. The
  exception is an institution the vault already establishes
  ([[The Principles of Magic]], the [[Regalia Pillar]]). Mechanism detail and
  cross-links to other Arts are what the author adds on revision; spend the words
  there instead.

- **Do not restate the parent's gloss.** A subset that re-explains its register
  wastes attention on something read four seconds ago. Say only what changes.

- **Match the density of the level.** Niches carry the longest, most mechanical
  prose; registers are shorter and more abstract. A three-sentence register
  beneath a six-sentence niche is inverted.

- **A new named object or concept is a decision, not a drafting convenience.**
  If the entry needs one — a new relic, material, or term — flag it explicitly as
  new and let the author rule on it.

## Step 5 — Cross-link pass

After drafting, check whether existing entries should now name the new one: a
counter to [[Barrier Arts]], a mirror of an existing niche, a cousin by
convergence. Propose those as a short list of specific line changes. Do not make
them silently — they touch prose the author has already revised, and they fall
under the confirmation rule in `arcanoria-canon`.

## Step 6 — Close the loop

This is what keeps the taxonomy connected to the rest of the system rather than
growing in isolation.

**Backlog.** Run `creative-worldbuilding`'s Backlog Triage Protocol over
`White Agent Scribe\Canon_Ledger\Gateway_Backlog_Pipeline.md` §1 *Acoustic
Systems & Spellweaving Mechanics* and `Ideation_Matrix_Nexuses.md`, plus the
TO-DO bullets in `Worldbuilding\Gateway To Genesis.md` — which is where those
backlog items originate, and where the author's own wording is authoritative
over the ledger's paraphrase of it. Several open
items are register work waiting for an entry — the tessitura/discipline boundary
layers, Dual-Triad Layering vs. Tetrad Chaos (which is supposed to invent
[[Beam Arts]]), the [[Glyphic Heptastave]] stroke taxonomy, the Circle of Fifths
pentagram mechanics. If a new entry closes or advances one, say so and propose
the tick; if it opens a new gap, propose the backlog line.

**Scribe.** A confirmed register is a canon decision, so it earns a
`Session_Extracts/` entry (`type: session-extract`) or an update to an existing
`Canon_Ledger/` file — structured extraction, never a chat dump, wikilinked into
existing content, author-confirmed before writing. Tag with the established
`#spellweaving`; reuse existing tags rather than minting new ones.

**Delegation.** Register work is vault work and is **never delegated** — vault
writes route back to the author per `arcanoria-delegation`. But an entry often
implies implementation that *is* delegable: a mechanic that needs a Unity
system, a new Art that needs a page or an i18n string on the Sonata site, an
instrument or pedal on the Soul Oscillator. Hand those off per
`arcanoria-delegation` — one repo per delegation, explicit `workdir`, minimum
`allowedTools`, and carry the specific canon constraint in the prompt rather
than a pointer to "the canon".

## Worked example — the shape to aim for

    	- [[Rebound Arts]] ([[Resonance]] + [[Cindergale]]) — Subset of impulses struck so that the medium hands them back, and of meeting that return on the beat instead of paying for a new one. Where [[Chamber Arts]] builds the body that answers an impulse, this is the hand that answers it, and where [[Cadence Arts]] gives the count to [[Strand]] so the beat keeps itself, here the count is held live by the exchange and a single missed beat ends it. The first lesson is not how to hit but how to stop stopping the blow, because only the opening impulse is ever truly paid for out of [[Essence Sacrifice]] and everything after it is borrowed back from the medium.

Three sentences that place the entry under its register, contrast it against two
named siblings in one breath, state the failure condition, name the first lesson,
and explain the [[Essence Sacrifice]] economy that makes the subset worth having.
No institutional aside, no restatement of [[Pulse Wave Magic]], every term linked.
