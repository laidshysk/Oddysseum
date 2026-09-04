# Items systems

Everything can be an item, chairs, weapons, charms, etc.
An item consists on an Area2D node with child nodes as needed. They have sprites, a interaction collission shape for picking it up, and others nodes as needed.

Structure of an item:

- Area2D
	- sprite
	- interaction collission shape
	- ...(other nodes)

Or other way:

- Area2D
	- Root node of item itself

> the above way could be used as abstraction, convenience or generalization of an item.

### Properties:
An item has these base properties:

	- Type/Kind (or grouping)
	- isPicked


### Behaviours
An item has these base behaviours:

	- _on_item_picked
	- _on_item_dropped
	- activateItem()

_on_item_picked/dropped : activation signal functions for dealing with control variables if item is picked

activateItem() : item performs required action, during which it cannot start use again until current use finishes. Use, finish use, can use again.

An item recognizes when mouse pointer enters itself with a collision shape, then signals of mouse_over/mouse_exited are fired from item through GlobalSignalsEmitter for player soul to acknowledge.

**Important note on item usage**
>activateItem function of an item is itself privately defined accordingly, but all items use the same function name for its usage for easy use.