The event system is the core of handling [[Events]]. It manages all narrative by parsing [[Ink Volumes]] and all their respective stories. It schedules [[Events]] by [[Ages]] and [[Seventh]] presenting decisions using Chorus Screens, evaluates choices against the game's [[Pillars]] and [[Substats]]. It applies outcomes that create changes to the world.

It manages a bunch of scripts together which function like:

- Event System Logic (The central logic for running the system)
- Event Volume Manager for reading the current stories in [[Events]] found in [[Ink Volumes]].
- Event Screen Manager for displaying the screens and populating them according to the content found in the ink files.
- Ink Story Manager and Ink Driven Event Setup for parsing the story contents, consequences, and properly converting it into actionable code.
- Chorus Screen Manager and Decision Token for handling all the consequences related to [[Events]] and the outcomes of [[Pillars]]' Challenge Rolls.

On its implementation it handles [[Events]] metadata like ID, Titles, [[Ages]] and related triggers