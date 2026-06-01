extends Node

@onready var poopy: Character = $"../Poopy"
@onready var pipette: Character = $"../Pipette"


func pause(t):
	return get_tree().create_timer(t).timeout 


func _ready():
	await pause(5)
	poopy.say("Hello!")
	await pause(2)
	poopy.sigh()
	await pause(5) 
	poopy.say("This is poopy!")
	await pause(10) 
	pipette.say("Thi is pipette!")
