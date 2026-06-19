class_name ErrorMessageTrigger extends TextureButton

# Cursors
var cursor_forward = load("res://cursors/move.forward.png")
var cursor_default = load("res://cursors/default.png")
var cursor_out = load("res://cursors/move.out2.png")

@export var window_open: bool = false

# Texts
@export var headerText: String = "UH OH!"
@export_multiline var messageText: String = ".... error message here ...."
@export var buttonText: String = "OK"


func _on_pressed():
	print("PRESSED - trigger error message")
	if window_open:
		print("error message window already open")
	else:
		var error_message_window = load("res://errormessages/error_message_window.tscn")
		var my_error: ErrorMessageWindow = error_message_window.instantiate()
		my_error.set_header_text(headerText)
		my_error.set_message_text(messageText)
		my_error.set_button_text(buttonText)
		my_error.closed.connect(on_window_closed)
		add_sibling(my_error)
		window_open = true
		Input.set_custom_mouse_cursor(cursor_default)

	
func on_window_closed():
	window_open = false
	
func _on_mouse_entered():
	Input.set_custom_mouse_cursor(cursor_out)


func _on_mouse_exited():
	Input.set_custom_mouse_cursor(cursor_default)
