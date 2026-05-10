class_name RoomDoor extends TextureButton


enum CursorStyle {
	Up, Down, Left, Right
}

@export var next_scene: String
@export var cursor_style: CursorStyle

var cursor_left = load("res://cursors/left.png")
var cursor_down = load("res://cursors/down.png")
var cursor_right = load("res://cursors/right.png")
var cursor_up = load("res://cursors/up.png")



func _on_pressed():
	print("pressed! entering ", next_scene)
	#get_tree().change_scene_to_packed(next_scene)
	get_tree().change_scene_to_file(next_scene)
	#$AnimationPlayer.play("fadeout")
	


#func _on_animation_player_animation_finished(anim_name):
	#if anim_name == "fadeout":
		#get_tree().change_scene_to_packed(next_scene)


func _on_mouse_entered():
	print("mouse entered ", next_scene)
	if cursor_style == CursorStyle.Up:
		Input.set_custom_mouse_cursor(cursor_up)
	if cursor_style == CursorStyle.Down:
		Input.set_custom_mouse_cursor(cursor_down)
	if cursor_style == CursorStyle.Left:
		Input.set_custom_mouse_cursor(cursor_left)
	if cursor_style == CursorStyle.Right:
		Input.set_custom_mouse_cursor(cursor_right)


func _on_mouse_exited():
	Input.set_custom_mouse_cursor(null)


func _on_to_garden_2_pressed():
	pass # Replace with function body.
