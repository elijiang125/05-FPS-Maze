extends Node

var menu = null

func _ready():
	pause_mode = Node.PAUSE_MODE_PROCESS

func _unhandled_input(_event):
	if Input.is_action_just_pressed("menu"):
		menu = get_node_or_null("/root/Game/UI/Menu")
		if menu != null:
			if menu.visible:
				menu.hide()
			else:
				menu.show()
