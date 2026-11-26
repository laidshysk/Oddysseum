Global functions/signals to access globally

### Signals
mouse_over : signal emitted by every scene for telling the player(soul) that mouse pointer is over them
mouse_exited : exit signal for mouse_over
hit_player : *to be implemented*
enemy_hit : signal to emit by an enemy for telling to every object that it hit something, sending the array of objects with the signal

comments:
>all signals are emitted on _ready execution of this Global with null as parameters just to comply with godot's warnings

### Methods

- initGlobals(node):
Initializes the Globals in a given node via its Globals dictionary
- insertOverlappingNode(overlappingNodes, node):
inserts node into overlappingNodes array accordingly to its z_index value
- initPlayer(playerPart):
initializes the Global usage elements of the entity player by separate, the soul or the body.

**Comment**

>the below description of Globals initialization on nodes via Dictionary, or initialization via node variables lead to confusion of usage, usage of Globals is just invoking them until said otherwise

`initGlobals() : initializes the globals autoloads nodes for a given **node** via a dictionary with keys being the name of said Global as it is in the Project Settings and values being the identity of said Global, this to make whichever node be needed to have the globals at their disposition`