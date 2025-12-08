Game Logic runs as the core manager for two sections:
### Game Units Logic

This system manages every in-game item of the class of Game Units. These are [[Resources]], [[Production Units]], and [[Technologies]]. Game Units are stored in container collections divided by sections. Some [[Resources]] pertaining to [[Old World Relics]] appear as such, like Duskstone.

In the case of [[Technologies]] however, they are grouped by [[Ages]] instead, like [[Age of Desolation]] being the section for Reconstruction. Finally, production units are categorized by [[District]] like Field Kitchen being part of the [[Heartlands]] or Decaying Hut being part of the [[Residential District]]. 

Responsibilities
- Register, Instantiate, and map Game Units into their respective section.
- Provide a canonical lookup to all [[Resources]], [[Production Units]], and [[Technologies]].
- Persist container organization for mapping UI listings.
- Expose generic data for tooltips and coordinate displays.

### Pop Growth Manager

This system is the central manager for handling population growth, births, deaths, vagrancy, and similar logic. It calculates population changes on the spot, and it converts [[Vagrants]] into [[Citizens]] when conditions allow, primarily controlled through [[Housing]] when there is excess [[Food]]. It's also a script that emits notifications to other systems to respond to [[Events]], and directly affect [[Satisfaction]].

Responsibilities:
- Create more [[Vagrants]] and convert to [[Citizens]].
- Allow [[Food]] past a threshold to create new population.
- Handle deaths through starvation or [[Events]].
- Record deaths and [[True Deaths]].
