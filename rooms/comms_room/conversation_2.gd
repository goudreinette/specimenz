extends Conversation

@onready var poopy: Character = $"../../Poopy"
@onready var pipette: Character = $"../../Pipette"



func start():
	await pause(7)
	pipette.say("Hi poopy how was \n your day?")
	pipette.wave()
	
	await pause(5)
	poopy.say("Day")
	
	await pause(5)
	pipette.say("My day was okay")
	
	await pause(4)
	pipette.say("Nothing happened")
	
	await pause(5)
	poopy.say("Okay")
	
	await pause(4)
	pipette.say("Bye")
	pipette.wave()
	
	await pause(5)
	poopy.say("Bye Maeve")
	poopy.wave()
	
	await pause(4)
	pipette.say("Woah cool")
	
	await pause(5)
	poopy.say("Cool")
	
	conversation_finished.emit()
