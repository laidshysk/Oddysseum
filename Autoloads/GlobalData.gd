extends Node

var world
var player : KinematicBody2D
var playerSoul : Node2D

func _ready():
	var root = get_parent()
	world = root.get_children()[root.get_child_count() - 1]
