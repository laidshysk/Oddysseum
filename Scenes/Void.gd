extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var testResource = load("res://Resources/testResource.tres")

# Called when the node enters the scene tree for the first time.
func _ready():
	
	var aux = testResource.testVar
	print(testResource.testFunc(aux))
	
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

