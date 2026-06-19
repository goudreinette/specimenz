extends Conversation

@onready var poopy: Character = $"../../Poopy"
@onready var pipette: Character = $"../../Pipette"


func start():
	await pause(1)
	pipette.say("Hi Poopy")
	pipette.wave()
	
	await pause(5)
	poopy.say("Hi Maeve")
	poopy.wave()
	
	await pause(4)
	pipette.say("Haha cool")
	
	await pause(5)
	poopy.say("Cool")
	
	await pause(6)
	pipette.say("My day was okay \n I guess")
	
	await pause(5)
	poopy.say("Okay I guess")
	
	await pause(5)
	pipette.say("Haha your funny")
	
	await pause(5)
	poopy.say("Funny Maeve")
	
	await pause(5)
	pipette.say("Funny Poopy")
	
	await pause(5)
	poopy.say("Me Poopy")
	
	await pause(6)
	pipette.say("Yes you are poopy!")
	
	await pause(5)
	poopy.say("Me Maeve")
	
	await pause(2)
	pipette.say("No")
	pipette.huh()
	
	await pause(4)
	pipette.say("You are poopy")
	
	await pause(5)
	poopy.say("Poopy Maeve")
	
	await pause(4)
	pipette.say("Hahahaha")
	
	await pause(5)
	poopy.say("Funny")
	
	await pause(4)
	pipette.say("Bye Poopy")
	pipette.wave()
	
	await pause(5)
	poopy.say("Bye Meave")
	poopy.wave()
	
	await pause(4)
	pipette.say("Hahaha")
	
	await pause(5)
	pipette.say("Bye Stinky")
	pipette.wave()
	
	await pause(5)
	poopy.say("Stinky")
	
	await pause(15)
	
	conversation_finished.emit()
