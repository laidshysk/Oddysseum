extends Node

signal mouse_over		# 1 argument, the node
signal mouse_exited		# 1 argument, the node
signal hit_player		# 0 arguments

func _ready():
	emit_signal("mouse_over", null)
	emit_signal("mouse_exited", null)
	emit_signal("hit_player")
