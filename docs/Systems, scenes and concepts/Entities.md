# Entities doc
Entities have basic structure that can be built upon, every entity has at least:
	- Sprite
	- worldCollision
	- hitbox

All entities have
	hitbox collision shape : the hitbox of the entity, child of the entity root node, this collisionObject2D is in layer 10, it doesn't scan on any mask
	world collision shape : the collision box of the entity to move around the world and collision with walls or other world collision shapes of other things, this collisionObject2D is in layer 1, it scans on mask 1

## Enemy (Base)
### overview
basic enemy, an entity that can move, pick items, attack and more behaviour

Basic structure of an enemy is as follows:
	- Base structure
	- stalkTimer
	- attackTimer
	- clickTimer
	- attackCooldownTimer
	- unarmedCollision

The base enemy has an unarmed collision box for unarmed attacks, this collisionObject2D is in no layer, it scans on the mask all other hitboxes of all other entities and objects are in, mask 10

**Properties**
every enemy has these properties:
- health
- mode : behaviour mode, attack, stalk
- distanceToPlayer : vector distance to player
- actMode : the "mode" to act of the enemy
- stalkDistance : distance radius to stalk the player
- stalkDistanceArc : calculated once, the arc length of travel while stalking (deprecated)
- stalkDirection : (while stalking) the direction (L or R) for travel while stalking the player, right the radius or left the radius(changes the rotation direction while stalking)
- overlappingNodes : array to hold how many objects are in the collision box of the item held by enemy (or its unarmed hitbox) at any given time
- itemInHand : the item held by the enemy, null if none
- attackDistance :  the distance in pixels the enemy has to stay close to attack with given item(or unarmed)
- attackCooldown : flag to check if the enemy its in cooldown after attack

**Methods**:
- getDistanceToPlayer(): gets the distance to the entity Player as an array from the players global pos - its own self pos
- enemyAct(delta): it chooses the what the enemy would do based on its actMode variable
- enemyStalk(_delta): "stalking" the player, it runs around a circunference around the player at a designated radius, it changes direction when it runs randomly.
	This method uses variables:
		- multiplier: it acts as a velocity value for the final vector2 to walk through while stalking
		- distanceToRadius: the vector2 that points to the circunference of some radius in the line between the player and the enemy
		- walkDistance: the final vector2 that the enemy will walk through
		- auxAngle: auxiliary angle variable

- enemyAttack(_delta): checks if it has an item, it uses it, if not, then uses its unarmed hitbox to attack checking that it's unarmed hitbox has had a collision with something.
	An attack consists of checking collisions with other objects (entites or objects), then send the signal "enemy_hit" through the global behaviour with the array of all the objects/entites that the hitbox detected when the code for attacking executed. The idea its to every object/entity respond the signal if hit it.
	How does attack?
		- If it has an item in hand : it sends the signal "enemy_hit" with the overlappingNodes array if its not empty, the overlappingNodes array gets its elements with the collision box of the held item, the item detects collision with something, signals the enemy, then adds it to the array.
		- If its unarmed : it sends the signal "enemy_hit" with the overlappingNodes array if its not empty, the overlappingNodes array gets its elements with the unarmedCollision's collision box node(native to every enemy), this area2D node detects collision with something, signals the enemy, then adds it to the array.

**Signal methods**:
- _on_stalkTimer_timeout(): changes the actMode var to Attack, starts attackTimer
- _on_attackTimer_timeout(): changes the actMode var to Stalk, starts stalkTimer
- _on_clickTimer_timeout(): chooses randomly between L or R to update stalkDirection variable
- _on_unarmedCollision_area_entered(area): adds the area2D's parent that collisioned with to the overlappingNodes array
- _on_unarmedCollision_area_exited(area): removes the area2D's parent that exits the unarmedCollision from the overlappingNodes array
- _on_attackCooldownTimer_timeout(): resets the attackCooldown flag to be able to attack again