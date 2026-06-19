class_name ErrorMessageWindow extends Node2D



# Cursors
var cursor_active = load("res://cursors/active.png")
var cursor_default = load("res://cursors/default.png")

# Signal
signal closed


# Setters for text
func set_header_text(s: String):
	$ErrorWindow/HeaderLabel.text = s
	
func set_message_text(s: String):
	$ErrorWindow/MessageLabel.text = s

func set_button_text(s: String):
	$ErrorWindow/TextureButton/ButtonLabel.text = s


# Cursor hover events
func _on_texture_button_mouse_entered(source):
	Input.set_custom_mouse_cursor(cursor_active)

func _on_texture_button_mouse_exited():
	Input.set_custom_mouse_cursor(cursor_default)

func _on_cursor_default_rect_mouse_exited():
	Input.set_custom_mouse_cursor(cursor_default)

# Delete error message
func _on_texture_button_pressed():
	print("CLOSE ERROR MESSAGE")
	$ErrorMessageClose.play()


func _on_error_message_close_sound_finished():
	closed.emit()
	queue_free()
