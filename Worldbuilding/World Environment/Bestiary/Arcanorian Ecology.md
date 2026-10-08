#technology #biome #society #creature

_"No herd forgets the hand that hunted it, and no land forgets the herd it lost. What we call wilderness is only memory that learned to breathe, graze, and flee."_ — [[The White-Touched Archivist]]

**Status:**

- [x] Tracking Implemented
- [x] Game Effects Implemented

_In this world, creatures are not placed in the path of [[Civilization]]. [[Civilization]] must find its own place in the food-web. 

_"The creatures of [[Arcanoria]] are not decoration, and they are not obstacles. They are a second [[Civilization]] that never writes its history but remembers it anyway." - [[Sprite-Light Conclave]]_

[[Arcanorian Ecology]] is a deep interplay of complex food-webs, the division of [[Auric Structure]] and [[Pure Light]], and the restlessness turn of [[Ages]] with its own "survival of the fittest" at every age change which reflects the volatility of [[Pure Light]].

Every creature of [[Arcanoria]] lives, breeds, hunts, migrates, sickens, and remembers on its own, whether or not anyone is watching. Herds grow where the land can carry them and thin where it cannot. Predators follow their prey. Lineages heavy in [[Pure Light]] flourish where [[Coherence]] holds and vanish where it breaks, while the lineages of [[Auric Structure]] endure almost anything. And every species keeps a memory of how it has been treated, so that a hunt, a sanctuary, or a stolen meadow is never a single event but a historical memory that returns as debt.

This entry describes how that living world is structured: where creatures live, what they are, how they learn, how the [[Echo]]es move them, how knowledge of them is earned, and how [[Enclave]]s, plagues, and each [[Age Crisis]] reshapes them across the [[Ages]]. The [[Atonalis]] stand outside the food-web. They feed on [[Consciousness]], not on flesh counted in herds, and they are subject to their own respective [[Eight-Born Paths]]. Yet they drink from the same [[Emotional Residue]] as the [[Eleos Bloom]]s, and that shared register is described in _Emotional Alchemy_.

### Where Creatures Live

[[Arcanoria]] is read at several scales, each with its own role: the overall map, the Quadrants that divide it, the Macro Biomes placed into each Quadrant, the Intersections that stitch them together, and the nine compass Sectors of every Macro Biome. A traveler hears these as a single place name: _"the Violet Grove, Somewhere in the North-East Sector."_

The ecology lives in the **Macro Biome**. Each one holds its own populations, one for every species that dwells there, counted not in individuals but in **groups**: herds, packs, hives, veils, choruses, and colonies. A handful of dozen Macro Biomes carry the entire living world, and every cell of land within them only reads from the ecology of the Macro Biome it belongs to. The land does not keep count of each wolf. The Grove keeps count of its packs.

The ecology turns once every [[Echo]], after the [[Eleos Bloom]]s have sprouted, turned, faded, and passed a generation. [[Eleos Bloom]]s do not take part in the counting of herds: their vigor is fed by the [[Emotional Residue]] of the land, as described in _Emotional Alchemy_.

#### Range and Habitat

A Macro Biome's **range** is its own land plus the Intersection cells that lie nearest to it. Within that range, a species' **habitat** is every cell where one of its dens could stand: the terrain, the moisture, the warmth, the [[Coherence]] or [[Dissonance]] it demands, together with the dens already standing. The habitat is redrawn at the dawn of every [[Ages]], since each Age brings new land, lost land, and new creatures.

#### The Carrying Capacity of the Land

What a Macro Biome can carry of a species is the sum of its habitat, weighed by the creature's size and by the quality of each cell:

$$K = \sum_{c \,\in\, \text{habitat}} \rho_{\text{size}} \cdot q_c$$

A single cell holds **1** group of small creatures, **0.5** of medium ones, **0.25** of large ones, and only **0.05** of the gargantuan. Quality begins whole and is worn down by everything that presses on the land:

- **The pressure of people:** A settlement weighs **0.6** on its own cell, fading over three cells, and every held cell weighs a further **0.1**. Creatures that flee or hide feel this pressure half again as strongly, while the unmoved feel it only half as much.
    
- **[[Pure Light]] fragility:** A lineage needs [[Coherence]] of at least **0.6** times its [[Pure Light]] share. A creature of **70%** [[Pure Light]] needs **0.42** [[Coherence]] to live well, and its habitat falls to nothing **0.2** below that. The same land that sustains a boar may be uninhabitable for a moth.
    
- **[[Vibrational Fallout]]:** Every lineage suffers Fallout in proportion to its [[Pure Light]], as quality falls by $q \times (1 - F \cdot P \cdot 2)$. A cockroach walks through the edge of a Fallout zone. A sprite dissolves in it.
    
- **Prey:** A predator's capacity follows the abundance of its prey, and never falls below a fifth of what the land would otherwise hold, since no hunter lives on a single meal.
    

#### Growth, Predation and the Food-Web

Every population grows each [[Echo]] toward what the land can carry, following the logistic curve of its reproductive pace:

$$\Delta N = r \cdot s_{\text{Echo}} \cdot N \left(1 - \frac{N}{K}\right)$$

Where $r$ is **0.05** for the very slow, **0.12** for the slow, **0.25** for the medium, and **0.45** for the fast, and $s_{\text{Echo}}$ is the season's breath upon births (see _The Creatures' Calendar_).

Predators take up to **8%** of their prey every [[Echo]] when at full strength. The Grey Wolf hunts the Steppe Aurochs, the Taiga Elk, the Highland Ibex, the Wild Boar, and the Lanternback Grazer; the Screech Sabrecat hunts the Ibex, the Elk, and the Meadow Hare; the Bog Eel and the Cave Bear both feed on the River Trout. A wolf pack that eats its valley bare will starve along with it, and a valley emptied of wolves will overflow with elk until the grass itself gives out.

#### Dens, Founding and Migration

Each species is anchored to the land through its **dens**: warrens, nests, ledges, hives, middens, and swarming grounds that appear with their [[Ages]]. Where a den stands, the population is founded at **80%** of what the land can hold.

When a population swells past half its capacity, it disperses into the neighbouring Macro Biomes that have room, according to how it ranges:

- **Settled** creatures never leave.
- **Territorial** ones send out **5%** of their groups.
- **Roaming** ones send out **10%**.
- **Nomadic** and **expanding** ones send out **20%**.

Whatever overflows past capacity must move or die. A population that reaches **35%** of capacity in a Macro Biome where it has no den founds a new one there, so creatures can colonize lands they were never born in. A population that falls below **0.05** groups is gone from that Macro Biome, and the [[Great Harmonic Loom]] does not bring it back on its own.

### The Nature of a Species

Every creature of the bestiary, whether a beast of [[Auric Structure]] or a being of [[Pure Light]], shares the same shape. Its **nature** is what it is born as: its diet, its stance toward threat, and the subgroup that defines how it responds, gathers, mates, breeds, and ranges.

#### Diet, Stance and Subgroup

There are four diets, and within them twenty-one subgroups:

| Diet | Stance | Subgroup | Response to Threat | Group | Mating | Pace | Ranging |
|---|---|---|---|---|---|---|---|
| Herbivore | Passive | Frightful | Flees on sight | 15–20 | Poly | Medium | Roaming |
| Herbivore | Passive | Docile | Flees when threatened | 8–12 | Mono | Medium | Roaming |
| Herbivore | Passive | Venerable | Unmoved | 1 (2 with young) | Mono | Very slow | Roaming |
| Herbivore | Aggressive | Territorial | Defends its territory | 6–15 | Mono | Medium | Territorial |
| Herbivore | Aggressive | Benign | Defends when threatened | 5–15 | Poly | Medium | Roaming |
| Herbivore | Aggressive | Wrathful | Attacks on sight | 10–30 | Poly | Fast | Nomadic |
| Omnivore | Aggressive | Smart | Avoids conflict | 1 | Poly | Slow | Roaming |
| Omnivore | Aggressive | Erratic | Unpredictable | 3–9 | Poly | Medium | Nomadic |
| Omnivore | Neutral | Territorial | Defends its territory | 5–15 | Mono | Medium | Territorial |
| Omnivore | Neutral | Benign | Defends when threatened | 2–4 | Mono | Medium | Nomadic |
| Carnivore | Aggressive | Unobtrusive | Attacks on sight | 1 | Mono | Slow | Settled |
| Carnivore | Aggressive | Jingoistic | Expands | 50–500 | Poly | Fast | Expanding |
| Carnivore | Territorial | Solitary | Defends its den | 1 | Poly | Slow | Settled |
| Carnivore | Territorial | Social | Hunts as a pack | 4–12 | Mono | Medium | Nomadic |
| Carnivore | Territorial | Isolationist | Hunts the injured | 4–10 | Poly | Medium | Territorial |
| Carnivore | Apex | Marauder | Hunts, but announces itself | 1 | Poly | Slow | Roaming |
| Carnivore | Apex | Trapper | Lures | 1 | Poly | Very slow | Territorial |
| Detritivore | Passive | Frightful | Flees on sight | 1–5 | Poly | Slow | Roaming |
| Detritivore | Passive | Hiding | Hides | 1–5 | Mono | Slow | Settled |
| Detritivore | Neutral | Territorial | Defends its territory | 10–30 | Poly | Medium | Territorial |
| Detritivore | Neutral | Docile | Defends when threatened | 2–6 | Mono | Medium | Roaming |

A species may break from its subgroup's customs where its life demands it: the Wild Bee's hives gather in the thousands, the Choir Cicada sings in choruses of up to two thousand, and the Moonveil Moth drifts in veils of up to two hundred.

The bestiary follows a balance of roughly **44%** herbivores, **26%** carnivores, **18%** omnivores and **12%** detritivores. Related ecotypes, such as the sprites and the slimes that descend from them, count together as a single lineage in that balance.

The most feared of all are the **Apex** predators, and they come in two kinds that must be learned to be read. **Marauders**, such as the Screech Sabrecat, hunt openly and announce themselves with a screech before they strike. **Trappers**, such as the predatory [[Eleos Bloom]]s (the Threshold Cushion, the Glottis-Mouth Trap, and the Hearth-Eater), lure with beauty, stay hidden until surveyed, and draw expeditions into the Lure. The dark fantasy of [[Arcanoria]] lives in that distinction: the thing that screams is not always the thing that kills you.

#### The Harmonic Makeup

Every species carries its share of [[Auric Structure]] and, with it, the rest in [[Pure Light]]. Following the canon of [[Pure Light]], any lineage with less than **65%** [[Auric Structure]], or with a dedicated [[Coherence-Binding Tissue]] organ, is a **[[Pure Light]] being**. Those beings attune on the [[Ritual Seventh]], suffer the resonance plagues, and bear the full weight of [[Vibrational Fallout]].

The [[Coherence-Binding Tissue]] of a species lies in one of six places:

- **Hide:** CBT woven through skin and scale, as in the Lanternback Grazer and the Ember Salamander.
- **Wings:** CBT membranes that metabolize ambient magic, as in the Moonveil Moth and the [[Luminant Moths]].
- **Voice:** A [[Resonance Box]] or chorus organ, as in the Choir Cicada and the Dawnhorn Behemoth.
- **Gland:** Glandular CBT releasing resonance-charged pheromones or roars.
- **Fins:** CBT in fin rays or swim bladders, singing through pressure instead of air.
- **Matrix:** A whole body of CBT, as in the Trapper blooms, the [[Elemental Sprite]]s and the [[Slime]]s.

No lineage bearing a CBT organ keeps more than **70%** [[Auric Structure]]. As [[Pure Light]] establishes, a creature that earns its [[Coherence-Binding Tissue]] leaves the resilience of the structural pole behind and moves toward the 50-50 axis.

#### The Harmonic Niche

A [[Pure Light]] lineage does not seek the same harmony as every other. Its **harmonic niche** defines where its light finds what it needs:

- **Coherent:** It lives where [[Coherence]] holds, following the fragility rule above.
- **Discordant:** It feeds on the torn song. [[Dissonance]] meets its need in place of [[Coherence]], and [[Vibrational Fallout]] spares it. The Ember Salamander lives only on rift scars, where [[Dissonance]] reaches at least **0.2**.
- **Leyline:** It lives on the [[Leylines]] themselves, on silver water, or within a single cell of a silver river. Away from them, its land keeps only **30%** of its quality. The Moonveil Moth, whose dew tastes of [[Lunehymn]], is such a creature.

Each species may also carry a **breeding [[Echo]]**, the season in which its births peak (see _The Creatures' Calendar_).

#### Life Among People

Some creatures do not flee [[Civilization]]. They follow it. A species' **commensal** share describes how much of its life is drawn from people's works instead of the wild: granaries, middens, lantern-lit streets. For such creatures, the quality of the land blends the wild with the settled:

$$q = (1 - c) \cdot q_{\text{wild}} + c \cdot 1.5 \cdot \frac{\text{pressure}}{0.6}$$

The Granary Rat and the Hearth Roach live almost entirely beside people. The [[Luminant Moths]] live half among them. The more a settlement grows, the more of them it feeds.

Some of those creatures are also **vectors** that carry sickness to the people they live beside (see _Creatures and the Health of People_).

### Behavior: The Memory of a Lineage

A species' nature is what it is born as. Its **behavior** is what it has learned, and it applies to every authority it meets: the player's [[Civilization]] and all its outposts, every [[Enclave]], and every rival [[Civilization]].

Behavior is kept in two layers:

- **Overall behavior:** One per species. It is what the lineage as a whole has learned from everyone, and it drifts with the treatment it receives from all authorities together. It is what a newcomer meets **on first encounter**. A docile species hunted everywhere greets a stranger as frightful.
    
- **Relationship behavior:** One per species for each authority. From first encounter onward, it moves with how that authority alone treats the species. A frightful species can grow gentle toward a [[Civilization]] that treats it well, while still meeting everyone else with its overall behavior. **It learns to tell its keepers from outsiders.**
    

Behavior is always kept per species, never per den. When one den is hunted, the entire lineage remembers.

#### The Response Ladder

Behavior is a temper from **-1** to **+1**. Every **0.34** of temper moves the species' response one step along its ladder, never more than two steps from its nature:

- **Creatures that flee or hide:** Lets you come near ← Flees when threatened → Flees on sight.
- **All others:** Lets you come near ← Defends itself ← Defends its territory ← Attacks on sight.

Hunters, lurers, and screechers already sit at the top of their ladder, so they can only ever grow calmer. Below a full step, a species simply shows its own nature.

#### Harm and Easing

- **The hunt:** Each hunt worsens the temper toward the hunter by **0.06**.
- **Stolen habitat:** Newly held land worsens it by **0.6** times the share of the species' habitat taken in that [[Echo]].
- **Coexistence:** An authority that holds some of a species' habitat and does not hunt it for an [[Echo]] eases the temper by **0.04**, up to **0.4**, which is exactly one step: the species learns to let them near.
- **Befriending:** Rescues, sanctuaries and domestication go further, up to a full **+1**.

#### The Word Spreads

A lineage "spreads the word" about who saved it and who harmed it. Every change in its relationship with one authority moves its overall behavior by **35%** of that change. This is how a [[Civilization]] that hunts relentlessly teaches an entire species to fear every stranger, not only itself.

An authority first meets a species when it first holds land within its habitat, or, for the player's [[Civilization]], when one of its dens is identified. Land already held at that moment is not counted as stolen.

#### Consequences of Behavior

Behavior is read toward whoever is involved:

- **The pressure of people is weighed by behavior.** A species that has learned to flee a [[Civilization]] minds its land half again as much, and one that lets them near minds it only half as much. Hunted species thin out of a [[Civilization]]'s land and gather in the land of those who spare them.
- **Wary prey yields less.** A hunt brings back only **60%** from a species that has learned to flee or hide from the hunter.
- **Hostile dens are dangerous.** A den whose species has been driven harsher than its nature toward a [[Civilization]], so that it now flees on sight, defends its territory, or attacks, casts **0.35** danger on its own cell and its neighbours. A panicked herd tramples as surely as a hostile one strikes.

#### Scar Spectra Across the Ages

At the dawn of every new [[Ages]], every temper eases back toward the species' nature, but **30%** of it persists as inherited memory, the scar spectra of [[Pure Light]] passing coherence history into offspring. A lineage that lost half or more of its number to the [[Cataclysmic Aftermath]] keeps **60%** instead. The creatures that suffered most remember longest.

### The Hunt

An expedition that harvests a den of creatures does not gather; it **hunts**. A den can be hunted **once every [[Phase]]**, and each hunt takes **6%** of what the land can carry of that species while bringing back **35%** of the den's listed harvest.

This rhythm is the lesson of the hunt:

- Hunted every [[Phase]], any herd wears down, and a species of medium pace collapses within a few [[Echo]]es.
- Hunted every other [[Phase]], a fast breeder holds.
- Hunted once an [[Echo]], a herd of medium pace endures indefinitely.

A den's yields follow its abundance. Below **20%** of what its land can carry, a den is **depleted**: it yields nothing and cannot be hunted. _"Too few are left to hunt: leave them to recover."_

Not every hunt is for meat. The Hearth Roach has nothing to take, and a hunt only scatters them. A hunt of Granary Rats brings back a few hides, but its true worth is the cull.

### The Creatures' Calendar

_"Every effect of the [[Echo]] reflects in the Environment."_

The creatures of [[Arcanoria]] live by the same [[Cycle]] as its people. Each [[Echo]] leaves its mark on the living world when it ends, and across a full [[Cycle]] every effect balances back to the whole.

#### The Four Echoes

| [[Echo]] | Theme | Births | Decomposers | Spreading | Predation | Yields & Hunts | Trust Lost | Trust Eased | Plagues |
|---|---|---|---|---|---|---|---|---|---|
| [[Echo of Resonance]] | Spring: Birth, Attunement, Harmonic Opening | ×1.6 | ×1 | ×0.6 | ×0.8 | ×1 | ×1 | **×2** | ×0.6 |
| [[Echo of Crescendo]] | Summer: Growth, Power, Elevation | ×1.2 | ×1 | ×1.4 | ×1.2 | **×1.3** | ×1 | ×1 | ×0.8 |
| [[Echo of Dissonance]] | Autumn: Fracture, Chaos, Decay | ×0.8 | **×1.8** | ×1.4 | ×1 | ×1 | **×1.5** | ×0.5 | **×1.8** |
| [[Echo of Silence]] | Winter: Death, Rest, Rebirth | ×0.4 | ×0.6 | ×0.6 | ×1 | ×0.7 | ×1 | ×1 | ×0.8 |

- **[[Echo of Resonance]]:** The herds give birth, and the creatures forgive most readily, attuned to the world opening its song.
- **[[Echo of Crescendo]]:** The creatures range widest and yield the most, and predators hunt hardest.
- **[[Echo of Dissonance]]:** The herds scatter and migrate, decay feeds the decomposers, and a hunt fractures trust the deepest.
- **[[Echo of Silence]]:** The creatures lie dormant and few are born, and hungry predators stray toward settlements.

#### The Three Phases

The living effects of an [[Echo]] (yields and hunts, trust lost to hunts, and hunger) open at half strength in its first [[Phase]], peak in its middle one, and wane again in its last. The heart of every season is its middle [[Phase]]: the [[Phase of Harmonics]], the [[Phase of Zenith]], the [[Phase of Ashfall]], and the [[Phase of Repose]].

#### Breeding Echoes

Some lineages do not follow their diet's rhythm, but keep a season of their own. In its breeding [[Echo]], a species' births rise to **×2.2**, and in the other three they fall to **×0.6**, so that the [[Cycle]] as a whole keeps its balance:

- **[[Echo of Resonance]]:** The Wild Bee and the Meadow Hare.
- **[[Echo of Crescendo]]:** The Choir Cicada, whose chorus is the sound of summer.
- **[[Echo of Dissonance]]:** The River Trout, spawning in the autumn runs.

#### The Hunger of Silence

During the [[Echo of Silence]], hungry predators (carnivores and any species that hunts prey) stray toward the settlements of [[Civilization]]. Their dens cast danger on held land within three cells. _"Hungry: its hunters stray onto your land nearby."_

#### The [[Ritual Seventh]]

On every [[Ritual Seventh]], attunement peaks at the Full [[Moon]] and [[Lunehymn]] flows at its fullest. The living world answers:

- **The surge of [[Pure Light]]:** Every [[Pure Light]] being surges by **8%** times its [[Pure Light]] share, multiplied by the season's births, wherever its range holds the [[Coherence]] it needs. Silver water counts **+0.15** toward that need, as the [[Lunehymn]] is at its fullest.
- **The overload:** Where its range cannot hold that need, the same attunement overloads it instead, and it loses **5%** times its [[Pure Light]] share.
- **The calm:** Every species calms slightly toward each authority that has not hunted it during the [[Phase]], **+0.03** times the season's easing, up to one step.
- **The sacrilege:** A hunt made on a [[Ritual Seventh]] costs twice the trust.

### Knowledge of Creatures

The map knows only what [[Civilization]] knows. No card, no chronicle, and no window names or counts a creature that no one has identified. Knowledge of each species deepens through five levels:

1. **Sighted:** One of its dens has been seen. It is only "unidentified fauna."
2. **Identified:** One of its dens has been surveyed. Its name, its nature, and its harmonic makeup are revealed, along with where its dens were found.
3. **Observed:** Three observations have been gathered: each [[Echo]] an identified den has lived within two cells of held land, each hunt, and each further place its dens were found. Its behavior toward [[Civilization]] is revealed (and whether it is warier or gentler than its nature), along with the hunts made against it, its numbers in words, its harmonic niche, and its breeding [[Echo]].
4. **Understood:** Observed, plus a technology that carries **Creature Studies** or the study of an [[Auric Enclave]]. Its exact numbers are revealed, along with what newcomers meet (its overall behavior), what it hunts and what hunts it, the sickness it carries, and the plagues tuned to it.
5. **Mastered:** Understood through keeping, when a [[Domestication Enclave]] under [[Suzerainty]] keeps it for [[Civilization]].

The hover card of a den follows the same rule: its population appears only once the species is Observed, and a running plague shows always, but by its folklore first.

#### The Bestiary

The **Bestiary** opens with the technology **Knowledge Sanctums**, _"learn to preserve and expand knowledge"_. Every identified species appears with its card and with every place its dens were found, by Macro Biome and Sector. Sighted creatures appear only as unidentified fauna, den by den. **Creature Studies** arrives with **Vital Winds Mastery**, the technology that follows Knowledge Sanctums.

Knowledge is remembered. A den that fades, a predatory bloom that withers, or a land lost to an [[Age Crisis]] does not erase what was learned there. The Bestiary keeps it: _"Once found... no den known to stand there now."_

#### Discovery as Enlightenment

Every level of knowledge rewards discovery once. Identifying, understanding and mastering a species each pay Era Score, and rare creatures pay more: the Dawnhorn Behemoth pays **+2** Era Score when identified and **+40** Research once understood.

Discovery also feeds the Enlightenment of technologies. A technology's eureka may ask for creatures identified, resource sites identified, the knowledge of a single named species, a species' population, or its behavior toward [[Civilization]]. Knowledge Sanctums grows closer with two creatures identified, The Rekindling with a resource site identified, and Resource Preservation with the Wild Bee identified, whose honey never spoils.

A discovery is always a eureka and never a hard requirement, since no creature is promised to every world. The Macro Biomes of a Quadrant are drawn from more than it holds, and a gate tied to a creature from a biome that was never drawn would lock the path forever.

### Resonance Plagues

As [[Pure Light]] establishes, diseases in [[Arcanoria]] are bio-magical systems that exploit resonance interfaces. **Resonance plagues** are tuned to a few [[Pure Light]] lineages and break out where their range is **torn**: where [[Dissonance]] and [[Static Criticality]] together reach the plague's threshold.

Each [[Echo]], a plague may break out among its hosts in a Macro Biome with its chance, multiplied by the torn share of their range and by the season's rhythm, which is at its strongest in the [[Echo of Dissonance]]. Once it breaks out, it kills its share of the hosts there every [[Echo]] for its duration, may reach each neighbouring Macro Biome where hosts live, and cannot return until the survivors' scar spectra fade.

| Plague | Folklore | Hosts | Torn At | Chance | Kills / [[Echo]] | [[Echo]]es | Spread | Immunity |
|---|---|---|---|---|---|---|---|---|
| Dragon's Bane | The scale-rot | Dragons | 0.2 | 0.3 | 40% | 3 | 0.1 | 6 |
| Slime Blight | The melting | Every [[Slime]] ecotype | 0.15 | 0.5 | 60% | 2 | 0.25 | 4 |
| Lantern Gutter | The dimming | Lanternback Grazer | 0.15 | 0.5 | 45% | 2 | 0.15 | 4 |
| Veil Blight | The falling sickness | Moonveil Moth | 0.15 | 0.5 | 55% | 2 | 0.15 | 4 |
| Chorus Fever | The wrong song | Choir Cicada | 0.2 | 0.5 | 50% | 2 | 0.15 | 4 |

#### Diseases Begin as Folklore

A plague is known only by its folklore until one of its hosts is Understood. _"A sickness runs through the Lanternback Grazers of the Violet Grove; people call it the dimming."_ Only when [[Civilization]] understands the creature does the sickness gain its true name: _"Lantern Gutter breaks out among..."_

### Creatures and the Health of People

The health of a people rests on five dormant pressures (Nutrition, Disease Burden, Sanitation, Exposure, and Harmonic Stability), each with its own causes and its own treatments. Creatures reach it through **Disease Burden**.

Every **vector** species living near a settlement adds to it. The land within two cells of each settlement is weighed by the vectors living there:

$$V = \frac{\sum_i v_i \cdot N_i \cdot q}{25 \cdot S}$$

Where $v_i$ is a species' vector share, $N_i$ its groups near the settlement, $q$ the quality of their land, and $S$ the number of settlements. The Granary Rat (**0.7**), the [[Luminant Moths]] (**0.6**) and the Hearth Roach (**0.4**) are the vectors of the early [[Ages]].

Because the pressure is read from living populations, **culling works**. Hunting vectors down near a settlement lowers Disease Burden directly, and every [[Domestication Enclave]] and [[Agromagical Enclave]] under [[Suzerainty]] treats it.

### Enclaves and Creatures

Every [[Enclave]] is an authority in the eyes of the creatures, with its own relationship behavior toward every species. This is how the creatures of a [[Domestication Enclave]] behave: calm with their keepers, wary of strangers.

#### The Keepers: [[Domestication Enclave]]s

Every [[Domestication Enclave]] keeps the species of the Macro Biomes within six cells of it and befriends them every [[Echo]]. What a keeper will keep depends on its nature: the [[Sprite-Light Conclave]] keeps only [[Pure Light]] beings, and it appears from [[Age of Desolation]] onward on high-[[Coherence]] ground.

While [[Civilization]] holds a keeper's [[Suzerainty]]:

- The kept species befriend [[Civilization]] as well.
- Hunts of the kept species do only a quarter of the harm.
- Their herds bring Food by their numbers.
- Every kept species that [[Civilization]] has identified is **Mastered**.

#### The Growers: [[Agromagical Enclave]]s

Every [[Agromagical Enclave]] tends the land within six cells of it. Each [[Echo]], the populations there recover **15%** of the gap between what they are and what the land can carry. Their sanitation also treats the health of the people.

#### The Scholars: [[Auric Enclave]]s

While [[Civilization]] holds the [[Suzerainty]] of an [[Auric Enclave]], every creature it has Observed is Understood, as with the technology of Creature Studies. The Aureate Cloister is the first of them, appearing in the [[Age of Renewal]].

#### Commissions

An [[Enclave]] with a standing of **50** or more, or one under [[Suzerainty]], within twelve cells of an identified den, will serve [[Civilization]] once every [[Phase]] for **20** Food and **10** standing (nothing for a suzerain):

- **[[Militant Enclave]] hunters cull:** They take **30%** of what the land holds. It costs three hunts' worth of trust, toward [[Civilization]] and toward them.
- **[[Domestication Enclave]] keepers tame:** The species' temper toward [[Civilization]] rises by **0.25**.
- **[[Agromagical Enclave]] growers restore:** Half the gap to what the land can carry is recovered at once.
- **[[Auric Enclave]] scholars study:** The species is Understood at once.

Ecological problems in [[Arcanoria]] are therefore also political, economic, and narrative ones. Who a [[Civilization]] befriends decides which creatures it can save.

### The Great Plague's Moths

The [[Luminant Moths]] are not the Moonveil Moths. They are small [[Pure Light]] creatures of **30%** [[Auric Structure]], frightful and fast-breeding, with CBT in their wings and a life bound to the [[Leylines]]. They live half among people, and they are vectors. Their swarms gather on ground of at least **0.2** [[Coherence]] where [[Lunehymn]] flows.

From the [[Age of Renewal]], **the Amberwing Lanternry**, a [[Domestication Enclave]] darker than the [[Sprite-Light Conclave]], trades them for their light. Every [[Echo]]:

- [[Trade Routes]] carry **10%** of a Macro Biome's moths into every other Macro Biome they pass through.
- Every Lanternry brings **0.5** groups of moths into each Macro Biome of the settlements within sixteen cells of it.
- While the [[Great Plague]] runs, moths within two cells of settlements breed by **0.5** times the Disease Burden. Disease-rich blood feeds them better, they breed faster, and the Disease Burden they carry rises in turn.

It is a loop, and only culling breaks it.

#### The Reveal

Before the reveal, nothing about the moths is said. They are beloved, beautiful, and economically essential. The truth comes to [[Civilization]] at the second wave of the [[Great Plague]], _"The Moths Are Everywhere"_, or when the moths are Understood through an Auric study, or once the [[Ages]] has passed. From then on, the den's card and the Bestiary warn that they carry sickness, and every [[Echo]] tells when they thicken or spread.

#### What Works

- **Hunting or a [[Militant Enclave]]'s cull** near settlements, at the cost of the moths' trust.
- **The treatments of [[Agromagical Enclave]]s and [[Domestication Enclave]]s** for the health of the people.
- **Asking the Lanternry to close its farms:** After the reveal, at a standing of **40**, spending **15** standing and **10** Food (a suzerain always agrees at no standing), the Lanternry stops its trade for four [[Echo]]es.

None of it changes the severity of the [[Great Plague]] itself. The moths are the mechanism, not the root. The root is the saturation of the [[Dual Confluence Stream]].

### The Aftermath of Creatures

When an [[Ages]] ends, the living world passes through the [[Cataclysmic Aftermath]] alongside [[Civilization]]. Once the new Age's creatures and dens have been placed, the ecology runs through four trials.

#### The Crash

Every population crashes according to the severity $\sigma$ of the [[Age Crisis]] that ended and to its own [[Pure Light]] share $P$:

$$N' = N \cdot \left[1 - \sigma \left(0.2 + 1.2\,P\right)\right]$$

Below **0.1** of its former number, a population is gone from that Macro Biome. A roach of **95%** [[Auric Structure]] keeps **87%** of itself through a crisis of half severity. A sprite of **90%** [[Pure Light]] does not survive a full one. **[[Auric Structure]] is permanence.**

#### The Shifting of Ranges

A population whose Macro Biome no longer has any habitat in the new Age moves into the neighbouring Macro Biomes that do, divided by the habitat each one offers. With nowhere to go, it dies.

#### The Resettling

A Macro Biome whose creatures fell below **30%** of what they were is resettled by a new ecotype lineage, arriving at **15%** of what the land can hold. Lineages of the dead zones come first, and only where Fallout of at least **0.2** covers enough of their range. Every other lineage arrives in an order seeded by the world, the Macro Biome and the Age. This is the principle of the [[Slime]] ecotypes applied to the whole living world: the parents never adapt, but new lineages eventually learn to sing a different song.

#### The Scars

The behavior of every lineage carries over through its scar spectra (see _Behavior_), and the lineages that suffered most keep the deepest memory.

### From Sprites to Slimes

#### The Last Unmerged Light

The [[Elemental Sprite]]s that never merged with the land, beings of **10%** [[Auric Structure]] and **90%** [[Pure Light]], are the rarest creatures in [[Arcanoria]]. Unmerged light survives only on ground of at least **80%** [[Coherence]], and only on a [[Sacred Site]] or at a junction where two families of [[Leylines]] converge. A single leyline or an ordinary coherent meadow is not enough, and where that refuge breaks, their population fails with it.

A world holds only one such refuge, and it always lies within reach of early exploration: a coherent, passable place eight to sixteen cells from the [[Capital]]. Its glow can be sighted through the fog. Surveying it reveals what it is and pays **+5** Era Score and **15** Research beyond the usual discovery.

#### The Ten Sprite Ecotypes

Most sprites have already begun to listen to the land. Ten ecotypes of **15%** [[Auric Structure]] live in the early [[Ages]], each tuned to the habitat whose song it has started to learn: Ice, Snow, Water, Marsh, Saltwater, Grassland, Mineral, Forest, Leyline, and Dead-zone. The Ice and Snow Sprites need cold as well as the right ground; the Water and Saltwater Sprites dwell along the banks and coasts; the Leyline Sprites follow the [[Leylines]]; and the Dead-zone Sprites are Discordant, feeding on the torn song where every other sprite would dissolve.

#### Entrainment

From the [[Age of Renewal]] onward, where a sprite ecotype's habitat lies within six cells of an [[Agromagical Enclave]], **5%** of its population passes into its matching [[Slime]] lineage every [[Echo]]. The parents remain sprites. It is their offspring who accumulate as slimes of **25%** [[Auric Structure]] and **75%** [[Pure Light]], who grow, spread, and found their own dens through the same ecology as every other creature.

No [[Slime]] ever appears at the creation of the world. Every one of them descends from a sprite that stayed near the fields long enough for the land to begin building a body around it. This is the [[Sprite-Light Conclave]]'s story told through the living world: the phases of Environmental Entrainment, Structural Nucleation, and CBT Differentiation, carried out one [[Echo]] at a time.

### The Bestiary of the Early Ages

| Species | Nature | [[Auric Structure]] / [[Pure Light]] | CBT | Life |
|---|---|---|---|---|
| Lanternback Grazer | Docile Herbivore, large | 45% / 55% | Hide | Prey of the Grey Wolf; host of Lantern Gutter. |
| Ember Salamander | Benign Herbivore, medium | 50% / 50% | Hide | Discordant; lives only on rift scars. |
| Moonveil Moth | Frightful Detritivore, small, veils of 20–200 | 30% / 70% | Wings | Leyline; host of Veil Blight. |
| Choir Cicada | Wrathful Herbivore, small, choruses of 200–2000 | 40% / 60% | Voice | Breeds in Crescendo; host of Chorus Fever. |
| Steppe Aurochs | Wrathful Herbivore, large | 90% / 10% | — | Prey of the Grey Wolf. |
| Highland Ibex | Frightful Herbivore, medium | 90% / 10% | — | Prey of the Grey Wolf and the Screech Sabrecat. |
| Taiga Elk | Docile Herbivore, large | 90% / 10% | — | Prey of the Grey Wolf and the Screech Sabrecat. |
| Meadow Hare | Frightful Herbivore, small, fast | 90% / 10% | — | Breeds in Resonance; prey of the Screech Sabrecat. |
| Mire Ox | Territorial Herbivore, large | 90% / 10% | — | Marsh and taiga bog. |
| Wild Bee | Territorial Herbivore, small, hives of 500–5000, fast | 95% / 5% | — | Breeds in Resonance; the hive defends the fields it pollinates. |
| Dawnhorn Behemoth | Venerable Herbivore, gargantuan | 55% / 45% | Voice | Appears in the [[Age of Behemoths]], seen from afar. |
| [[Luminant Moths]] | Frightful Herbivore, small, fast | 30% / 70% | Wings | Leyline; lives among people; vector of the [[Great Plague]]. |
| River Trout | Benign Omnivore, small, runs of 20–100 | 90% / 10% | — | Breeds in Dissonance; prey of the Bog Eel and the Cave Bear. |
| Wild Boar | Territorial Omnivore, medium | 90% / 10% | — | Prey of the Grey Wolf. |
| Cave Bear | Smart Omnivore, large | 90% / 10% | — | Hunts the River Trout. |
| Granary Rat | Benign Omnivore, small, 10–40, fast | 90% / 10% | — | Lives among people; vector; a hunt is a cull. |
| Grey Wolf | Social Carnivore, medium | 90% / 10% | — | Hunts the five great grazers. |
| Bog Eel | Unobtrusive Carnivore, medium | 90% / 10% | — | Hunts the River Trout. |
| Screech Sabrecat | Marauder Apex Predator, large | 90% / 10% | — | Appears in the [[Age of Renewal]]; announces itself with a screech. |
| Threshold Cushion, Glottis-Mouth Trap, Hearth-Eater | Trapper Apex Predators | 30% / 70% | Matrix | Predatory [[Eleos Bloom]]s; they lure. |
| Hearth Roach | Hiding Detritivore, small, 20–200, fast | 95% / 5% | — | Lives among people; vector; a hunt only scatters them. |
| Ashfall Beetle | Territorial Detritivore, medium | 95% / 5% | — | Ash, ruins and rift scars; enriches the soil. |
| [[Elemental Sprite]] | Docile Herbivore, small | 10% / 90% | Matrix | The last unmerged light; one refuge per world. |
| Sprite Ecotypes (10) | Docile Herbivores, small | 15% / 85% | Matrix | Each tuned to its habitat; parents of the slimes. |
| [[Slime]] Ecotypes (10) | Docile Herbivores, small | 25% / 75% | Matrix | From the [[Age of Renewal]], through entrainment; hosts of Slime Blight. |

The detritivores deserve particular attention. Canon places cockroach-like insects at **95%** [[Auric Structure]], and the bestiary honors that: the Hearth Roach and the Ashfall Beetle are the lineages that pass through every aftermath almost untouched, feeding on what every other lineage leaves behind.

### Emotional Alchemy

_"The [[Eleos Bloom]] principle is that nothing is wasted. Every emotion, no matter how painful, can become something beautiful and therapeutic if it is properly metabolized."_ — [[The White-Touched Archivist]]

Beneath the food-web runs a second economy that is not counted in herds: the [[Emotional Residue]] that every living thing leaves in a place. The [[Eleos Bloom]]s eat it, the [[Formless Masses]] pool from it, and the [[Atonalis]] hunt it. All three feed on the same register, and that shared hunger is what binds the flowers, the slimes and the demons into one ecology.

#### The Emotional Register

[[Emotional Residue]] is made of sixteen notes on eight axes, one axis for each of the [[Eight-Born Paths]]. Every axis has a **consonant** face, the feeling in its healthy state, and a **dissonant** face, the wound that its Path embodies and feeds on:

| Path | [[Consonance]] | [[Dissonance]] | The axis |
|---|---|---|---|
| [[Anxithor]] | Courage | Dread | Fear faced and held, or fear with nowhere to go. |
| [[Discant]] | Joy | Tumult | Strong feeling that keeps its rhythm, or the crash after the high. |
| [[Obsessian]] | Devotion | Fixation | Focus given freely, or the thought that will not let go. |
| [[Signath]] | Wonder | Doubt | Many truths held at once, or reality unmoored. |
| [[Carnalix]] | Vitality | Pain | The body in tune, or the body's suffering. |
| [[Animach]] | Belonging | Estrangement | A whole self among its own, or a self coming apart. |
| [[Violux]] | Pride | Shame | The will aligned with what it values, or what was done against it. |
| [[Erosyx]] | Love | Longing | Intimacy met, or intimacy denied. |

A place holds two kinds of feeling:

- **Living feeling:** What the people nearby feel this moment. A thriving settlement gives off Joy, Belonging, Love, Vitality, Pride in what it has built, and Devotion in the holidays it keeps. A suffering one gives off the wounds of whatever strains it: Dread when hunters prowl at its gates, Pain and Shame when it is pillaged, Estrangement and Longing when it is cut off, Fixation and Tumult under the daily grind, and Pain from hunger and sickness. The land itself adds Wonder where [[Coherence]] runs high or the [[Leylines]] pass, Devotion on [[Sacred Site]]s, and Doubt wherever the Loom is torn by [[Dissonance]] or [[Vibrational Fallout]].
- **Imprint:** What the land remembers. A battle leaves Dread, Pain for each one who fell, and the Courage of those who stood. A hunt leaves Pain and the hunters' Vitality. A scattered party leaves grief and estrangement, and so does a settlement fallen to ruin. Taking from another's ground leaves Shame, conscription leaves Longing, a festival leaves Joy and Love, and a kept holiday leaves Devotion. Every settlement also pours its living feeling into its own ground, one [[Seventh]] at a time. The imprint fades slowly as the land heals.

**[[Consonance]] soothes.** What weighs on the land is its wounds, less half its healthy feeling. A place of battle that is also a place of courage suffers less than one of dread alone.

#### Cocktails and Compound Feelings

No eater of feeling lives on a single note. Each eats a **cocktail**: a recipe of notes in proportion. A strict eater can only make as many servings of its cocktail as its scarcest note allows, while a loose eater takes any of its notes wherever it finds them. How exactly a place's mix matches a recipe is its **fit**.

Some mixes are known well enough to carry names of their own, the **compound feelings**:

| Compound | Recipe | What it is |
|---|---|---|
| Anemoia | Longing 40%, Wonder 30%, Estrangement 20%, Love 10% | Longing for a time you never knew. |
| Nostalgia | Longing 45%, Belonging 35%, Joy 20% | The sweet ache of a home that was. |
| Saudade | Longing 45%, Love 35%, Tumult 20% | Love for what is absent and may not return. |
| Grief | Tumult 40%, Love 35%, Estrangement 25% | Love that stays when its object is gone. |
| Catharsis | Tumult 35%, Joy 35%, Pain 30% | Pain released into relief. |
| Euphoria | Joy 60%, Vitality 40% | Joy flooding the body. |
| Ecstasy | Joy 45%, Wonder 25%, Vitality 20%, Love 10% | Joy so great it carries the self beyond itself. |
| Lust | Vitality 40%, Longing 30%, Shame 15%, Joy 15% | The body's hunger for another, with a thrill of the forbidden. |
| Desire | Longing 50%, Vitality 50% | The body reaching for another. |
| Awe | Wonder 50%, Dread 25%, Courage 25% | Wonder with a tremor of fear in it. |
| Terror | Dread 70%, Pain 20%, Doubt 10% | Fear with nowhere left to go. |
| Kenopsia | Estrangement 40%, Doubt 30%, Longing 30% | The eeriness of a place emptied of its people. |
| Vigil | Devotion 40%, Pain 30%, Love 30% | Devotion keeping watch over the hurt and the lost. |

The same alchemy names Melancholy, Paranoia, Hope, Defiance, Triumph, Tenderness, Serenity, Rapture, Guilt, Resentment, Humiliation, Jealousy, Loneliness, Dysphoria, Ennui, Sonder and Homecoming. An explorer who reads the air of a place may say it _"holds Anemoia"_: the compound its feelings most resemble.

#### Transmutation

A note can turn into its pair on the same axis:

- **The healers transmute wounds into health.** A healing [[Eleos Bloom]] breathes out **60%** of the wounded notes it drinks as their healthy pair: despair becomes joy, dread becomes courage, estrangement becomes belonging. This is how nothing is wasted.
- **The [[Atonalis]] transmute health into wounds.** An [[Atonalis]] that feeds turns the healthy notes it preys on into their wound. A [[Discant]] at a festival turns its joy into tumult, and an [[Erosyx]] turns love into longing. Their presence amplifies the pain that mirrors their own.

#### How the Eleos Blooms Feed

Every [[Eleos Bloom]] eats a cocktail of its own, and every kind has a **specificity**: how exactly its cocktail must be made. A **Generalist** takes any of its notes and spreads easily. An **Epicure** or **Connoisseur** is pickier. A **Purist** eats only its exact cocktail.

This is the evolutionary tension of the family. **The more niche a palate, the less the bloom grows**, giving up to **40%** of its growth, but a niche bloom fed its exact cocktail is **superloaded**: its gifts, its healing, its harvest and its lure grow up to **2.5 times** as potent. A generalist spreads and gives ordinary gifts. What a bloom eats is:

$$\text{food} = s \cdot \text{servings} + (1 - s) \cdot \text{loose}$$

where $s$ is its specificity.

Every bloom that is not withering **drinks** its cocktail out of the imprint of its own ground and the ground beside it. **Listeners** filter feeling from the land. **Healers** drink more deeply and transmute the wounds they drink. **Predators** feed on the feelings of what they lure. Planting Sorrowbells beside a grieving town keeps its grief from pooling into [[Formless Masses]]. A people's strongest feelings also draw up the blooms that catalogue them.

| [[Eleos Bloom]] | Niche | Cocktail | Specificity |
|---|---|---|---|
| Shame Moss | Listener | Shame 70%, Pride 30% | Epicure |
| Sorrowbells | Listener | Tumult 50%, Love 25%, Estrangement 25% (Grief) | Connoisseur |
| Memory Marigolds | Listener | Belonging 40%, Longing 35%, Joy 25% (Homecoming) | Epicure |
| Vow Orchids | Listener | Devotion 45%, Love 35%, Pride 20% | Purist |
| Lullroots | Listener | Dread 50%, Vitality 30%, Courage 20% | Epicure |
| Candlevein Bloom | Healer | Pain 30%, Tumult 25%, Love 25%, Devotion 20% (Vigil) | Epicure |
| Xochi-Singers | Healer | Tumult 35%, Love 25%, Belonging 25%, Joy 15% | Epicure |
| Skyroot Matriarch | Healer | Belonging 40%, Wonder 30%, Estrangement 30% (Sonder) | Epicure |
| [[Glimmerfern]] | Healer | Doubt 40%, Tumult 30%, Wonder 30% | Generalist |
| **Anemoia Lunaria** | Healer | Longing 40%, Wonder 30%, Estrangement 20%, Love 10% (Anemoia) | Purist |
| Lust Berries | Predator | Vitality 40%, Longing 30%, Shame 15%, Joy 15% (Lust) | Connoisseur |
| Threshold Cushion | Predator | Pain 50%, Dread 25%, Vitality 25% | Epicure |
| Glottis-Mouth Trap | Predator | Fixation 40%, Dread 35%, Love 25% | Connoisseur |
| Hearth-Eater | Predator | Longing 40%, Tumult 30%, Pain 30% | Epicure |

The [[Fated Flower]]s and Forsaken Flowers eat no cocktail: they follow history and sorrow alone.

#### The Anemoia Lunaria

The Anemoia Lunaria is a pale moon-bloom that grows only where longing, wonder and estrangement mingle in just the right measure: ruined fields, skeletal orchards, fallow steppe, violet glades and moonlit groves, on ground where [[Coherence]] still holds. It is a near-purist of the Anemoia cocktail. It grows sparsely and rarely, and where it finds its cocktail, its gifts are superloaded.

As a healer, it drinks the longing and estrangement of a place and breathes them back out as love and belonging, turning the ache for a life never lived into something closer to homecoming. Its flowers wither into translucent, coin-round **seed pods**. Held up to the moon, a pod shows the faint shape of a life that no one who holds it has lived.

Those pods are the flower's true harvest and one of the most longed-for **luxury goods** of [[Arcanoria]]: ornaments kept on shelves and windowsills, never used up, faintly holy to those who long. Every pod is also a seed that can still be planted.

#### Lineages and Evolution

A bloom's palate is not fixed. Each [[Echo]] is a generation for every bloom lineage, and now and then a lineage tries one of two paths and keeps whichever makes it fitter:

- **To specialize:** It sharpens its recipe to the exact proportions its land gives of its own notes, and grows pickier. This is the path of the superloaded niche.
- **To generalize:** It takes in the notes its land is rich in, and grows looser. This is the path of the survivor that spreads.

A lineage that starves on its land loosens its palate. A lineage fed its exact cocktail grows pickier and more potent. A lineage that drifts far enough from its ancestors becomes a **variety** of its own, named for the compound feeling it now resembles, such as _Memory Marigolds of Anemoia_. If it drifts back, it reverts to its kind.

#### How the Atonalis Feed

The [[Atonalis]] also eat cocktails, but **they never evolve**: a Path's hunger is fixed by its wound. Each hunger is mostly its own wound, often with a healthy note it preys on, and a little of its neighbours':

| Path | Hunger |
|---|---|
| [[Anxithor]] | Dread 50%, Courage 15%, Pain 10%, Doubt 10%, Fixation 10%, Estrangement 5% |
| [[Discant]] | Tumult 45%, Joy 20%, Longing 10%, Estrangement 10%, Pain 10%, Love 5% |
| [[Obsessian]] | Fixation 50%, Devotion 20%, Dread 10%, Doubt 10%, Shame 10% |
| [[Signath]] | Doubt 50%, Wonder 20%, Estrangement 15%, Dread 10%, Fixation 5% |
| [[Carnalix]] | Pain 55%, Vitality 20%, Dread 10%, Tumult 10%, Longing 5% |
| [[Animach]] | Estrangement 50%, Belonging 20%, Doubt 15%, Shame 10%, Longing 5% |
| [[Violux]] | Shame 50%, Pride 15%, Fixation 15%, Longing 10%, Tumult 10% |
| [[Erosyx]] | Longing 40%, Love 20%, Vitality 15%, Shame 15%, Estrangement 10% |

A roaming [[Atonalis]] follows the scent of its hunger and settles where it finds it. The [[Parasite Atonalis]] of desire drift toward revels, where Lust and Euphoria soak the ground; a [[Carnalix]] drifts toward slaughter grounds; a [[Discant]] drifts toward a festival's joy. Wherever they feed, they turn the health of a place into its wounds.

#### The Birth of the Land's Atonalis

Where the wounds of a place, and the Doubt of a torn Loom, grow heavy and nothing drinks them, lingering [[Consciousness]] pools into [[Formless Masses]]. They pool first on the land of a suffering people. A mass drinks every note of the imprint where it feeds. Once it has fed enough, it wraps itself in a [[Dissonance]] cocoon and hatches into the Path whose hunger its feeding most resembles.

Because the land's feelings are always mixed, **hybrids are the common birth**, and a mass that fed on a single axis hatches a rare purist. A mass gorged on a revel's joy becomes a [[Discant]]. One fed on tears and pain in equal measure becomes a [[Carnalix]]-[[Discant]] hybrid. Destroy a mass before it cocoons, and no [[Atonalis]] is born.

**The flowers that heal a people and the demons that hunt it eat from the same register. What the land feels decides which of them it grows.**

### Final Principle

The creatures of [[Arcanoria]] are not decoration, and they are not obstacles. They are a second [[Civilization]] that never writes its history, but remembers it anyway.

- Herds grow where the land can carry them.
- Predators rise and fall with their prey.
- [[Pure Light]] flourishes where [[Coherence]] holds and vanishes where it breaks.
- [[Auric Structure]] outlasts every [[Age Crisis]].
- Every lineage remembers who hunted it and who spared it.
- Every [[Echo]] moves them, and every [[Ritual Seventh]] calls to their light.

**A herd hunted is a lineage taught.**

**A land taken is a song interrupted.**

**A species understood is a future that can still be saved.**
