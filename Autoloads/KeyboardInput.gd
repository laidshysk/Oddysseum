extends Node

var inputMap : Dictionary
var PlayerUp : bool
var PlayerDown : bool
var PlayerLeft : bool
var PlayerRight : bool

func _ready():
	inputMap = {
		"PlayerUp" : PlayerUp,
		"PlayerDown" : PlayerDown,
		"PlayerLeft" : PlayerLeft,
		"PlayerRight" : PlayerRight
	}

func _process(_delta):
	inputMap["PlayerUp"] = Input.is_action_pressed("PlayerUp")
	inputMap["PlayerDown"] = Input.is_action_pressed("PlayerDown")
	inputMap["PlayerLeft"] = Input.is_action_pressed("PlayerLeft")
	inputMap["PlayerRight"] = Input.is_action_pressed("PlayerRight")
