extends Conversation

@onready var poopy: Character = $"../../Poopy"
@onready var pipette: Character = $"../../Pipette"


func start():
	await pause(5)
	pipette.say("Hi Poopy")
	pipette.wave()
	
	await pause(5)
	poopy.say("Hi Maeve, how was school?")
	poopy.wave()
	
	await pause(4)
	pipette.say("Today is Saturday")

	await pause(6)
	pipette.say("Theres no school \non the weekends")
	
	await pause(5)
	poopy.say("I see")
	
	await pause(5)
	poopy.say("How was your day?")
	
	await pause(5)
	pipette.say("I sneaked out today")
	
	await pause(5)
	poopy.say("Oh?")
	poopy.huh()
	
	await pause(5)
	poopy.say("Where did you go?")
	
	await pause(4)
	pipette.say("To the drugstore")

	await pause(4)
	pipette.say("I bought makeup")
	
	await pause(5)
	poopy.say("What is makeup?")
	
	await pause(6)
	pipette.say("It's to make \nyourself pretty")
	
	await pause(5)
	poopy.say("How does it make \nyou pretty?")
	
	await pause(6)
	pipette.say("You put the colors \non your face")
	
	await pause(5)
	poopy.say("Does it hurt?")
	
	await pause(5)
	pipette.say("No it just covers \nstuff")
	
	await pause(6)
	pipette.say("I dont really know \nhow to use it")
	
	await pause(6)
	pipette.say("But i feel pretty \nwhen i have it on")
	
	await pause(5)
	poopy.say("That is good")
	
	await pause(5)
	poopy.say("Can I see?")
	
	await pause(5)
	pipette.say("See what?")
	
	await pause(5)
	poopy.say("Your face with the \ncolors")

	await pause(5)
	pipette.say("Its not really colors")
	
	await pause(5)
	pipette.say("Its just normal stuff")
	
	await pause(5)
	poopy.say("Oh")
	
	await pause(5)
	poopy.say("I thought maybe you \nturned into a butterfly")
	
	await pause(7)
	pipette.say("You think I could \nturn into a butterfly?")
	
	await pause(5)
	poopy.say("Would you like to?")
	
	await pause(5)
	pipette.say("Yes I think so")
	
	await pause(5)
	poopy.say("What do butterflies eat?")
	
	await pause(5)
	pipette.say("I think they eat flowers")
	
	await pause(5)
	poopy.say("Flowers have many \ncolors too")
	
	await pause(4)
	pipette.say("That makes sense")
	
	await pause(5)
	poopy.say("Which one is your \nfavorite?")
	
	await pause(6)
	pipette.say("The purple ones")
	
	await pause(5)
	poopy.say("I like the purple \nflowers too")
	
	await pause(5)
	poopy.say("It's the same color \nas Poopy")
	
	await pause(7)
	pipette.say("We have ones like \nthat in the garden")
	
	await pause(5)
	poopy.say("Do you want to \nplay Flowers?")
	
	await pause(4)
	pipette.say("Yes!")
	
	conversation_finished.emit()
