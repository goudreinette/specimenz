extends Node2D


var dragging = false
var dragging_start_position = Vector2()
var acceleration = Vector2(0, 1)

func _on_control_gui_input(event):
	if event is InputEventMouseButton:
		if event.button_index == 1:
			dragging = !dragging
			dragging_start_position = get_local_mouse_position()
			

func _process(delta):
	if dragging:
		var mouse_position = get_global_mouse_position()
		var window_position = Vector2(DisplayServer.window_get_position())
		DisplayServer.window_set_position(window_position + (mouse_position - dragging_start_position))
	else:
		var window_position = Vector2(DisplayServer.window_get_position())
		#DisplayServer.window_set_position(window_position - Vector2(0.05, 0))
		#DisplayServer.window_set_position(window_position + acceleration)
		#if window_position.y > 1000:
			#acceleration *= -1
