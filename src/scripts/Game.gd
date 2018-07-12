extends Spatial


func _unhandled_key_input(event):
	if event is InputEventKey:
		if event.scancode == KEY_ESCAPE:
			get_tree().change_scene("res://scenes/menu/Main.tscn")


func _on_Player_eyes_enter(object):
	var text = ""

	if object.has_node("Title"):
		text = object.get_node("Title").text

	get_node("Interface/Hint").text = text


func _on_Player_eyes_leave(object):
	get_node("Interface/Hint").text = ""
