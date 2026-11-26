
## World building and mechanics
A couple of considerations on collision shapes and collision masks for all the that there is.
	- Collision Layer 1 is reserved for Rigid objects such as walls and other stuff.
	- Collision Layer 1 is reserved also for worldCollision shapes that affect PhysicsBody2D, if an item/object/structure needs to use Area2D as root node, worldCollision shape of it will be in layer 1.
	- Collision Layer 10 is reserved for any Entity/Player/Item/Object hitboxes, anything that needs a hitbox to be able to be attacked is in Layer 10.