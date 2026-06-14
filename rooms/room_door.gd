class_name RoomDoor extends TextureButton


enum CursorStyle {
	Active, Default, Backward, ForwardCurveLeft, ForwardCurveRight, Forward, LeftCurveBackward, LeftCurveForward, Left, RightCurveBackward, RightCurveForward, Right 
}

@export var next_scene: String
@export var cursor_style: CursorStyle

var cursor_active = load("res://cursors/active.png")
var cursor_default = load("res://cursors/default.png")
var cursor_backward = load("res://cursors/move.backward.png")
var cursor_forwardcurveleft = load("res://cursors/move.f.curve.l2.png")
var cursor_forwardcurveright = load("res://cursors/move.f.curve.r2.png")
var cursor_forward = load("res://cursors/move.forward.png")
var cursor_leftcurvebackward = load("res://cursors/move.l.curve.b.png")
var cursor_leftcurveforward = load("res://cursors/move.l.curve.f.png")
var cursor_left = load("res://cursors/move.left.png")
var cursor_rightcurvebackward = load("res://cursors/move.r.curve.b.png")
var cursor_rightcurveforward = load("res:/,/cursors/move.r.curve.f.png")
var cursor_right = load("res://cursors/move.right.png")





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
	if cursor_style == CursorStyle.Active:
		Input.set_custom_mouse_cursor(cursor_active)
	if cursor_style == CursorStyle.Default:
		Input.set_custom_mouse_cursor(cursor_default)
	if cursor_style == CursorStyle.Backward:
		Input.set_custom_mouse_cursor(cursor_backward)
	if cursor_style == CursorStyle.ForwardCurveLeft:
		Input.set_custom_mouse_cursor(cursor_forwardcurveleft)
	if cursor_style == CursorStyle.ForwardCurveRight:
		Input.set_custom_mouse_cursor(cursor_forwardcurveright)
	if cursor_style == CursorStyle.Forward:
		Input.set_custom_mouse_cursor(cursor_forward)
	if cursor_style == CursorStyle.LeftCurveBackward:
		Input.set_custom_mouse_cursor(cursor_leftcurvebackward)
	if cursor_style == CursorStyle.LeftCurveForward:
		Input.set_custom_mouse_cursor(cursor_leftcurveforward)
	if cursor_style == CursorStyle.Left:
		Input.set_custom_mouse_cursor(cursor_left)
	if cursor_style == CursorStyle.RightCurveBackward:
		Input.set_custom_mouse_cursor(cursor_rightcurvebackward)
	if cursor_style == CursorStyle.RightCurveForward:
		Input.set_custom_mouse_cursor(cursor_rightcurveforward)
	if cursor_style == CursorStyle.Right:
		Input.set_custom_mouse_cursor(cursor_right)


func _on_mouse_exited():
	Input.set_custom_mouse_cursor(cursor_default)


func _on_to_garden_2_pressed():
	pass # Replace with function body.
