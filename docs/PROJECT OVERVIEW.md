# Oddysseum

## Concept

2D godot game concept

## Major systems and information

	- Global systems
		- Global control node
		- Global Input system
		- Global signals emitter
		- Global behaviour functions node
		- Global Data container
	- Local/lesser systems scenes
		- Player
		- items
		- world
		- entities

Groups across the entire project for scenes:

	- Item
		- Weapon
		- Melee
	- Entity
		- Enemy

> Grouping scenes are done arbitrarily in editor with the names of documentation
> The groups group individual scenes for global behaviour

## Concept Architecture

Global systems take the lead for local scenes to play and exchange info and behaviour
Lesser scenes/systems play using Global systems
Global control autoload loads and manages the game scenes at play (menu, zone 1, zone x, floor 2, etc), events or history/progress of the game its responsibility of **to be implemented**


