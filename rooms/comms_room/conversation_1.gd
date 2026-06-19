extends Conversation

@onready var poopy: Character = $"../../Poopy"
@onready var pipette: Character = $"../../Pipette"




func start():
	await pause(1)
	pipette.say("Something")
	
	await pause(4)
	pipette.say("Blablblabllbalblblablalbalblabla")
	
	await pause(1)
	poopy.huh()
	
	await pause(4)
	pipette.say("Hello poopy its me maeve")
	pipette.wave()
	
	await pause(5)
	poopy.say("Hello")
	poopy.wave()
	
	await pause(3)
	pipette.say("Hello how are you")
	
	await pause(5)
	poopy.say("Hello")
	poopy.wave()
	
	await pause(4)
	pipette.say("You are poopy")
	
	await pause(5)
	poopy.say("Poopy")
	
	await pause(3)
	pipette.say("Yes")
	
	await pause(5)
	poopy.say("Yes")
	
	await pause(4)
	pipette.say("I am Maeve")
	
	await pause(5)
	poopy.say("Maeve")
	
	await pause(6)
	pipette.say("Poopy maeve poopy maeve\npoopy maeve poopy meave")
	
	await pause(3)
	pipette.say("What is my name?")
	
	await pause(5)
	poopy.say("Meave")
	
	await pause(4)
	pipette.say("You spelled it wrong, it's Maeve")
	
	await pause(5)
	poopy.say("Wrong")
	
	await pause(4)
	pipette.say("Your stupid")
	
	await pause(8)
	pipette.say("Sorry")
	
	await pause(5)
	poopy.say("Sorry")
	
	await pause(3)
	pipette.say("It's okay")
	
	await pause(5)
	poopy.say("Okay")
	
	await pause(4)
	pipette.say("I have to go now")
	
	await pause(2)
	pipette.say("Bye Bye")
	
	await pause(5)
	poopy.say("Bye")
	await pause(2)
	poopy.sigh()
	
	await pause(15)
	
	conversation_finished.emit()
	
	
