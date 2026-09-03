extends Node

signal mouse_over
signal mouse_exited
signal item_picked
signal item_dropped

func _ready():
	emit_signal("mouse_over", null)
	emit_signal("mouse_exited", null)
	emit_signal("item_picked", null)
	emit_signal("item_dropped", null)
