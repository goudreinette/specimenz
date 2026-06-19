class_name ErrorMessageTrigger extends TextureButton

var cursor_forward = load("res://cursors/move.forward.png")
var cursor_default = load("res://cursors/default.png")


@export var window_open: bool = false


func _on_pressed():
	print("PRESSED - trigger error message")
	if window_open:
		print("error message window already open")
	else:
		var error_message_window = load("res://errormessages/error_message_window.tscn")
		var my_error: ErrorMessageWindow = error_message_window.instantiate()
		my_error.closed.connect(on_window_closed)
		add_sibling(my_error)
		window_open = true
	
func on_window_closed():
	window_open = false
	
func _on_mouse_entered():
	Input.set_custom_mouse_cursor(cursor_forward)


func _on_mouse_exited():
	Input.set_custom_mouse_cursor(cursor_default)
