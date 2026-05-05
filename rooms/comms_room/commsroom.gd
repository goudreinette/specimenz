extends Node2D



func _ready():
	pass

	
func _input(event):
	if event.is_action_pressed("ui_accept"):
		print("should start timeline")
		var layout: DialogicLayoutBase = Dialogic.start("commsroom_timeline")
		(layout as DialogicLayoutBase).register_character(load("res://characters/Maeve.dch"), $"Node2D")
		#(layout as DialogicLayoutBase).register_character(load("res://characters/Poopy.dch"), $".")
