extends TextureButton

var cursor_forward = load("res://cursors/move.forward.png")
var cursor_default = load("res://cursors/default.png")

func _on_pressed():
	print("PRESSED - trigger error message")
	


func _on_mouse_entered():
	Input.set_custom_mouse_cursor(cursor_forward)


func _on_mouse_exited():
	Input.set_custom_mouse_cursor(cursor_default)
