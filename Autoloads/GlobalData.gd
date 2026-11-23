extends Node

#General Global variables
#----------------------
var world
var playerBody : KinematicBody2D
var playerSoul : Node2D
#----------------------

#Control variables
#----------------------
var playerInputControl : bool
#----------------------

#Input variables
#----------------------
var inputMap : Dictionary
var PlayerUp : bool
var PlayerDown : bool
var PlayerLeft : bool
var PlayerRight : bool
#----------------------


func _ready():
	#General Setup
	#----------------------
	var root = get_parent()
	world = root.get_children()[root.get_child_count() - 1]
	#----------------------
	
	#Control Setup
	#----------------------
	playerInputControl = true
	#----------------------
	
	#Input Setup
	#----------------------
	inputMap = {
	#player movement inputMap
	#------------------
	"PlayerUp" : PlayerUp,
	"PlayerDown" : PlayerDown,
	"PlayerLeft" : PlayerLeft,
	"PlayerRight" : PlayerRight,
	#------------------
	"DropItem" : false
	}
	#----------------------

func _process(_delta):
	inputMap["PlayerUp"] = Input.is_action_pressed("PlayerUp")
	inputMap["PlayerDown"] = Input.is_action_pressed("PlayerDown")
	inputMap["PlayerLeft"] = Input.is_action_pressed("PlayerLeft")
	inputMap["PlayerRight"] = Input.is_action_pressed("PlayerRight")
	
	inputMap["DropItem"] = Input.is_action_pressed("DropItem")
