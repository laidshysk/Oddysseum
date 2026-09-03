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

func insertOverlappingNode(overlappingNodes, node):
	var escapeFlag = false
	var iterator = 1
	while(not escapeFlag):
		if(iterator < (overlappingNodes.size()) + 1):
			if(overlappingNodes[iterator].z_index > node.z_index):
				overlappingNodes.insert(iterator - 1, node)
				escapeFlag = true
		else:
			overlappingNodes.append(node)
			escapeFlag = true
