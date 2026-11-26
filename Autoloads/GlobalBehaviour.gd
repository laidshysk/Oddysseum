extends Node

#Global signals
#----------------------
signal mouse_over		# 1 argument, the node
signal mouse_exited		# 1 argument, the node
signal hit_player		# 0 arguments
signal enemy_hit		# 1 argument
#----------------------

func _ready():
	#all signals emitted at launch
	#--------------
	emit_signal("mouse_over", null)
	emit_signal("mouse_exited", null)
	emit_signal("hit_player")
	emit_signal("enemy_hit", null)
	#--------------

func initGlobals(node):
	#GLOBALS NAMES IN NODES (keys)
	#	GlobalData
	#	GlobalBehaviour
	node.Globals["GlobalBehaviour"] = GlobalBehaviour
	node.Globals["GlobalData"] = GlobalData

func initPlayer(playerPart):
	if(playerPart != null):
		if(playerPart.IDENTIFIER == "PlayerSoul"):
			playerPart.Globals["GlobalData"].playerSoul = playerPart
			self.connect("mouse_over", playerPart, "_on_player_soul_mouse_over")
			self.connect("mouse_exited", playerPart, "_on_player_soul_mouse_exited")
		else:
			playerPart.Globals["GlobalData"].playerBody = playerPart
			playerPart.Globals["GlobalData"].playerSoul.connect("player_pick_item",playerPart,"_on_player_body_pick_item")
			playerPart.Globals["GlobalData"].playerSoul.connect("player_drop_item",playerPart,"_on_player_body_drop_item")
			playerPart.Globals["GlobalData"].playerSoul.connect("player_use_item",playerPart,"_on_player_body_use_item")
			self.connect("hit_player", playerPart, "_on_player_body_take_damage")

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
