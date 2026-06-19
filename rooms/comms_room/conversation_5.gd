extends Conversation

@onready var poopy: Character = $"../../Poopy"
@onready var pipette: Character = $"../../Pipette"


func start():
	await pause(1)
	pipette.say("Hi Poopster")
	pipette.wave()
	
	await pause(5)
	poopy.say("Poopster")
	poopy.huh()
	
	await pause(7)
	pipette.say("Sorry I mean hi Poopy")
	await pause(1)
	pipette.wave()
	
	await pause(5)
	poopy.say("Maeve day")
	
	await pause(6)
	pipette.say("Today was boring")
	
	await pause(5)
	poopy.say("School boring")
	
	await pause(7)
	pipette.say("Yeah but I have \nto go")
	
	await pause(2)
	poopy.huh()
	await pause(5)
	poopy.say("Go why?")
	
	await pause(6)
	pipette.say("I don't know, \nits stupid")
	
	await pause(5)
	poopy.say("Stupid")
	
	await pause(4)
	pipette.say("Yeah!")
	
	await pause(5)
	pipette.say("Stupid stupid stupid")
	
	await pause(5)
	poopy.say("School stupid")
	
	await pause(7)
	pipette.say("Im glad you think \nso too")
	
	await pause(5)
	poopy.say("School stupid")
	
	await pause(4)
	pipette.say("Yup")
	
	await pause(5)
	poopy.say("School stupid")
	
	await pause(5)
	poopy.say("Stinky")
	
	await pause(4)
	pipette.say("Haha")
	
	await pause(10)
	poopy.say("Maeve day")
	
	await pause(5)
	pipette.say("I already told you!")

	await pause(15)
	
	conversation_finished.emit()
