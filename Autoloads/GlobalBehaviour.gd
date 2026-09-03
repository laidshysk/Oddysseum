extends Node

func _ready():
	pass

func initGlobals(node):
	#GLOBALS NAMES IN NODES (keys)
	#	GlobalSignalsEmitter
	#	GlobalData
	#	GlobalBehaviour
	#	GlobalKeyboardInput
	
	node.Globals["GlobalControl"] = GlobalControl
	node.Globals["GlobalSignalsEmitter"] = GlobalSignalsEmitter
	node.Globals["GlobalData"] = GlobalData
	node.Globals["KeyboardInput"] = KeyboardInput
