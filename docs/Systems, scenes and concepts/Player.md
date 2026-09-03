# Player system

## Overview

The player entity, it has a soul and a body, the body controls what the body can do, the body interacts with the world.

> All the scripts in this scene have all the Global autoloads available

Signals:
- player_pick_item
- player_drop_item
- player_use_item

> all signals actions are responsibility of the body

## Player parts and responsibilities

### Body

Scripts: integrated script into KinematicBody2D node.
its Responsibilities are:

	- Move itself throught the world (movement())
	- pick/drop items (pick_item/drop_item)
	- use items (use_item)
	- manage its holding item (manage_item)

In _ready execution of Body node, the Player body node adds itself as _GlobalData.player variable to be hold in Global

Funcitons:

- movement(delta):
moves the player itself throught move and slide with vectors and velocity values, getting input info throught Global keyboard input system
- _on_soul_player_pick_item(_nodeUnderMouse):
takes the item selected throught _nodeUnderMouse, removes it from tree scene, adds it as child node of Player scene and tells said item that it has been picked
- _on_soul_player_use_item():
calls the activateItem function of the holding item
- _on_soul_player_drop_item():
if holding an item, it drops it, otherwise no action
- manage_item(_itemInHand):
makes the item follow mouse movement and angle, does not manage usage of item

### Soul

Scripts: integrated script into Node2D node.
its Responsibilities are:
	- Get mouse variables and data to use
	- Read interactions with the mouse in the world() be it detect items under mouse, clicks and actions, etc)

In _ready execution of soul node, the Player soul node adds itself as _GlobalData.playerSoul variable to be hold in Global

Funcitons:
- getMouseVars():
gets vector from player body node to mouse position and changes variable dependants
- mouseInteractions():
checks for clicks on mouse and responds accordingly:
	- if left click
		- if holding item
			- use item
		- elif player in reach
			- pick item
	- if right click **(to be implemented)**
- keyboardInteractions():
gets keyboards actions if control is given to the soul(i.e the player has the control), checks keys in keyboardInput global or combinations to perform actions

> Implementation of all methods used are local to player, refer to code to understanding