extends Node

@onready var poopy: Character = $"../Poopy"
@onready var pipette: Character = $"../Pipette"


func pause(t):
	return get_tree().create_timer(t).timeout 


func _ready():
	await pause(5)
	pipette.say("Some \n thing\n thing\n thing\n thing")
	await pause(5)
	pipette.say("Blablblabllbalblblablalbalblabla")
	await pause(5)
	pipette.say("Hello poopy its me maeve")
	await pause(6)
	poopy.say("Hello")
	await pause(3)
	pipette.say("Hello how are you")
	await pause(6)
	poopy.say("Hello")
	await pause(5)
	pipette.say("You are poopy")
	await pause(5)
	poopy.say("Poopy")
	await pause(5)
	pipette.say("Yes")
	await pause(5)
	poopy.say("Yes")
	await pause(5)
	pipette.say("I am Maeve")
	await pause(5)
	poopy.say("Maeve")
	await pause(6)
	pipette.say("Poopy maeve poopy maeve poopy maeve poopy meave")
	await pause(5)
	pipette.say("What is my name?")
	await pause(5)
	poopy.say("Meave")
	await pause(5)
	pipette.say("You spelled it wrong, it's Maeve")
	await pause(5)
	poopy.say("Wrong")
	await pause(5)
	pipette.say("Your stupid")
	await pause(8)
	pipette.say("Sorry")
	await pause(5)
	poopy.say("Sorry")
	await pause(4)
	pipette.say("It's okay")
	await pause(5)
	poopy.say("Okay")
	await pause(4)
	pipette.say("I have to go now")
	await pause(3)
	pipette.say("Bye Bye")
	await pause(5)
	poopy.say("Bye")
	await pause(5)

	poopy.sigh()
