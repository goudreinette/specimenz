extends Node


@onready var conversations: Array[Node] = $"Conversations".get_children()
var conversation_i = 0


func _ready():
	conversations[conversation_i].start()
	#$"Conversations/Conversation 1".start()

	
func _input(event):
	pass
	#if event.is_action_pressed("ui_accept"):
		#print("should start timeline")
		#var layout: DialogicLayoutBase = Dialogic.start("commsroom_timeline")
		#(layout as DialogicLayoutBase).register_character(load("res://characters/Maeve.dch"), $"Node2D")
		#(layout as DialogicLayoutBase).register_character(load("res://characters/Poopy.dch"), $".")

#func _on_conversation_finished(index: int):
func _on_conversation_finished():
	#print("Finished conversation ", (index+1))
	#var conversations = $"Conversations".get_children()
	conversation_i += 1
	conversation_i = conversation_i % conversations.size()
	conversations[conversation_i].start()
	
