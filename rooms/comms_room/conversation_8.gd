extends Conversation

@onready var poopy: Character = $"../../Poopy"
@onready var pipette: Character = $"../../Pipette"


func start():
	await pause(5)
	pipette.say("Hi Poopy")
	pipette.wave()
	
	await pause(5)
	poopy.say("Hi Maeve, how are you?")
	poopy.wave()
	
	await pause(5)
	pipette.say("Im VERY ANGRY")
	
	await pause(5)
	poopy.say("WHY ARE YOU ANGRY?")
	
	await pause(6)
	pipette.say("BECAUSE THEY TOOK \nMY PUH")
	
	await pause(1)
	poopy.huh()
	await pause(3)
	poopy.say("What is a puh?")
	
	await pause(5)
	pipette.say("Its my pillowcase")
	
	await pause(5)
	poopy.say("Why did they take \nyour puh?")
	
	await pause(4)
	pipette.say("I dont know!!!!")

	await pause(5)
	pipette.say("Its so stupid")

	await pause(6)
	pipette.say("I dont even do \nanything with it")
	
	await pause(5)
	poopy.say("What is the puh for?")
	
	await pause(5)
	pipette.say("Its for my \nfingernails")
	
	await pause(6)
	pipette.say("It feels nice on \nmy fingernails")
	
	await pause(5)
	pipette.say("But they say its bad")
	
	await pause(5)
	poopy.say("Why is the puh bad?")
	
	await pause(7)
	pipette.say("Because mister Mendelson \nsaid so of course")
	
	await pause(5)
	poopy.say("Did mister Mendelson \ntake it?")
	
	await pause(3)
	pipette.say("Yeah")

	await pause(7)
	pipette.say("He said he would lock \nit up in a big vault")
	
	await pause(4)
	pipette.say("I dont understand")
	
	await pause(7)
	pipette.say("Am i doing something \nwrong without knowing it?")
	
	await pause(5)
	poopy.say("It doesn't sound like \nit to me")
	
	await pause(6)
	pipette.say("But how amy I supposed \nto know??")
	
	await pause(5)
	poopy.say("Doesn't mister Mendelson \nexplain?")
	
	await pause(3)
	pipette.say("No")
	
	await pause(5)
	poopy.say("It sounds like he \nis stupid")
	
	await pause(4)
	pipette.say("He is STUPID")
	
	await pause(7)
	pipette.say("He always stops \ntalking when I don't \nlook at him")
	
	await pause(5)
	pipette.say("It's SO annoying")
	
	await pause(6)
	pipette.say("He counts how many \ntimes i do it")
	
	await pause(5)
	poopy.say("That is annoying")
	
	await pause(8)
	pipette.say("Am I a bad person?")
	
	await pause(5)
	poopy.say("No, you are a \ngood person")
	
	await pause(7)
	pipette.say("Mister Mendelson \ndoesnt think so")
	
	await pause(5)
	poopy.say("Mister Mendelson \nis stupid")
	
	await pause(4)
	pipette.say("HE IS SO STUPID")
	
	await pause(5)
	poopy.say("Do you want to \nplay Rocks?")
	
	await pause(3)
	pipette.say("YES")
	
	await pause(4)
	pipette.say("I mean yes")
	
	conversation_finished.emit()
