extends Conversation

@onready var poopy: Character = $"../../Poopy"
@onready var pipette: Character = $"../../Pipette"


func start():
	await pause(4)
	poopy.say("This is conversation 5!")
	await pause(2)
	pipette.say("Yup!")
	
	conversation_finished.emit()
