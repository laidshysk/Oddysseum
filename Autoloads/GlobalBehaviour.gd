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
	var iterator = 0
	while(not escapeFlag):
		if(iterator < (overlappingNodes.size())):
			if(overlappingNodes[iterator].z_index > node.z_index):
				overlappingNodes.insert(iterator, node)
				escapeFlag = true
		else:
			overlappingNodes.append(node)
			escapeFlag = true
		iterator += 1
