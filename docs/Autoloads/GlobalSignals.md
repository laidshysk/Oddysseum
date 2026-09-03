Global signals for usage

### Signals
mouse_over : signal emitted by every scene for telling the player(soul) that mouse pointer is over them
mouse_exited : exit signal for mouse_over
item_picked : signal from player(body) to tell an item that it has been picked
item_dropped : **to be implemented**

comments:
>all signals are emitted on _ready execution of this Global with null as parameters just to comply with godot's warnings