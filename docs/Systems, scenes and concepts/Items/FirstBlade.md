First weapon the player recieves
Simple sword that attacks fast

## Properties

Groups: Item, Weapon, Melee

damage : damage
isPicked
attackAnimation : the current playing/last played attack animation for memory
animationResetCooldown : cooldown flag to reset animation to iddle position

It has animations that enables and disables the damage shapes to produce contact at the usage time of the item.

Behaviour in integrated script inside father node Area2D
Description: the sword knows when its picked, dropped, hovered over or exited over itself.

## Methods

- activateItem() : use function of sword.
It follows the next sequence of steps:

`if not animResetCooldown - stop timer, start timer - play according animation`

If a click event is pressed before animation completes (timer reaches 0), activate again
If timer reaches 0, sets flag to resetCooldown true, then on timer's timeout() signal method plays animation to iddle accordingly then yields creates timer to wait the length of the idle animation, then sets flag to false again and the item can be used again.