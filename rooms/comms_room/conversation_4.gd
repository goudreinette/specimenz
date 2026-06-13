extends Conversation

@onready var poopy: Character = $"../../Poopy"
@onready var pipette: Character = $"../../Pipette"


func start():
	await pause(5)
	pipette.say("Hello Poopy")
	pipette.wave()
	
	await pause(5)
	poopy.say("Hi Maeve")
	poopy.wave()
	
	await pause(6)
	pipette.say("How are you")
	
	await pause(5)
	poopy.say("You day")
	
	await pause(6)
	pipette.say("I went to school")
	
	await pause(5)
	poopy.say("School")
	
	await pause(6)
	pipette.say("School is boring")
	
	await pause(5)
	poopy.say("School boring")
	
	await pause(5)
	pipette.say("Yeah I know")
	
	await pause(5)
	poopy.say("Stinky")
	
	await pause(4)
	pipette.say("Hahaha")
	
	await pause(3)
	pipette.say("yeah")
	
	conversation_finished.emit()
