# Entities doc
Entities have basic structure that can be built upon, every entity has at least:
	- Sprite
	- worldCollision
	- hitbox


## Enemy (Base)
### overview
basic enemy, an entity that can move, pick items, attack and more behaviour

Basic structure of an enemy is as follows:
	- Base structure
	- stalkTimer
	- attackTimer
	- clickTimer

### Properties
every enemy has these properties:
- health
- mode : behaviour mode, attack, stalk
- distanceToPlayer : vector distance to player
- actMode : the "mode" to act of the enemy
- stalkDistance : distance radius to stalk the player
- stalkDistanceArc : calculated once, the arc length of travel while stalking (deprecated)
- stalkDirection : (while stalking) the direction (L or R) for travel while stalking the player, right the radius or left the radius(changes the rotation direction while stalking)

###Methods
- getDistanceToPlayer(): gets the distance to the entity Player as an array from the players global pos - its own self pos
- enemyAct(delta): it chooses the what the enemy would do based on its actMode variable
- enemyStalk(_delta): "stalking" the player, it runs around a circunference around the player at a designated radius, it changes direction when it runs randomly.
	This method uses variables:
		- multiplier: it acts as a velocity value for the final vector2 to walk through while stalking
		- distanceToRadius: the vector2 that points to the circunference of some radius in the line between the player and the enemy
		- walkDistance: the final vector2 that the enemy will walk through
		- auxAngle: auxiliary angle variable

- enemyAttack(_delta): *to be implemented*

Method signals:
- _on_stalkTimer_timeout(): changes the actMode var to Attack, starts attackTimer
- _on_attackTimer_timeout(): changes the actMode var to Stalk, starts stalkTimer
- _on_clickTimer_timeout(): chooses randomly between L or R to update stalkDirection variable