extends Conversation

@onready var poopy: Character = $"../../Poopy"
@onready var pipette: Character = $"../../Pipette"


func start():
	
	await pause(5)
	poopy.say("Hi Maeve, how was school?")
	poopy.wave()
	
	await pause(7)
	pipette.say("Dylan laughed at me \nin front of everyone")
	
	await pause(1)
	poopy.huh()
	await pause(3)
	poopy.say("Why did Dylan laugh?")
	
	await pause(9)
	pipette.say("Scott was climbing on \nthe monkey bars and \nhe was moving very \nstiffly")
	
	await pause(6)
	pipette.say("It looked funny so I \ncalled him mister stiffy")
	
	await pause(5)
	pipette.say("Thats when Dylan \nlaughed")
	
	await pause(5)
	poopy.say("Did he laugh because \nit was funny?")

	await pause(5)
	pipette.say("No he was being mean")
	
	await pause(4)
	pipette.say("he pointed at me")
	
	await pause(4)
	pipette.say("I was so embarrassed")
	
	await pause(6)
	pipette.say("I didnt know that it \nwas a bad word")
	
	await pause(5)
	poopy.say("What is a bad word?")
	
	await pause(7)
	pipette.say("I dont want to say \nit now")
	
	await pause(5)
	poopy.say("Why didn't you know \nit was bad?")
	
	await pause(5)
	pipette.say("I just didn't okay?")
	
	await pause(6)
	pipette.say("Tim was laughing too")
	
	await pause(5)
	poopy.say("Thats very mean of him")
	
	await pause(5)
	pipette.say("Tim isnt mean")

	await pause(4)
	pipette.say("Im just dumb")
	
	await pause(1)
	poopy.huh()
	await pause(6)
	poopy.say("Is Poopy dumb?")
	
	await pause(5)
	pipette.say("No you arent dumb?")
	
	await pause(4)
	pipette.say("Im dumb")
	
	await pause(1)
	poopy.huh()
	await pause(3)
	poopy.say("But Maeve teaches Poopy")

	await pause(5)
	poopy.say("If Maeve is dumb then \nPoopy is dumb")
	
	await pause(6)
	pipette.say("Oh right")
	
	await pause(5)
	pipette.say("That's true i guess")

	await pause(5)
	poopy.say("Are you dumb?")
	poopy.huh()
	
	await pause(7)
	pipette.say("Ugh i dont know anymore")
	
	await pause(5)
	poopy.say("Who teaches Maeve?")
	
	await pause(4)
	pipette.say("Nobody")
	
	await pause(5)
	pipette.say("I'm just supposed to know")
	
	await pause(1)
	poopy.huh()
	await pause(3)
	poopy.say("That doesn't make any sense")
	
	await pause(5)
	pipette.say("When will I finally \nunderstand all of this?")
	poopy.say("When will I finally \nunderstand all of this?")
	
	await pause(6)
	pipette.say("What?")
	pipette.huh()
	
	await pause(5)
	poopy.say("Poopy Maeve")
	
	await pause(4)
	pipette.say("Hahaha")
	
	await pause(3)
	pipette.say("What?")
	
	await pause(5)
	poopy.say("Poopy Maeve")
	
	await pause(6)
	pipette.say("What?")
	pipette.huh()
	
	await pause(4)
	pipette.say("Poopy?")
	pipette.huh()
	
	await pause(3)
	pipette.say("Hello Poopy")
	
	await pause(5)
	pipette.say("Hello")
	
	await pause(3)
	poopy.say("Hello")
	
	await pause(5)
	pipette.say("Are you tired?")
	pipette.huh()
	
	await pause(5)
	poopy.say("Are you tired?")
	
	await pause(6)
	pipette.say("I am also tired but \nhow about you")
	
	await pause(5)
	poopy.say("I am also tired but")
	
	await pause(4)
	pipette.say("But what?")
	pipette.huh()
	
	await pause(5)
	poopy.say("What?")
	
	await pause(4)
	pipette.say("Okay we should both sleep")
	
	await pause(5)
	poopy.say("Poopy Maeve sleep")
	
	await pause(4)
	pipette.say("Yes lets sleep")
	
	await pause(5)
	poopy.say("Goodnight Poopy")
	
	await pause(4)
	pipette.say("Haha")

	await pause(4)
	pipette.say("Silly")
	
	await pause(5)
	pipette.say("Goodnight Maeve")
	
	await pause(5)
	poopy.say("Bye stinky")
	
	await pause(4)
	pipette.say("Hahaha")
	
	await pause(5)
	pipette.say("Bye bye")

	conversation_finished.emit()
