class_name DialogueManager extends Node2D



@export var poopy: Node2D
@export var pipette: Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		pass	

func poopy_say_something():
	pass

	
func pipette_say_something(): 
	pass
