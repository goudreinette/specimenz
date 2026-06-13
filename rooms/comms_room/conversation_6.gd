extends Conversation

@onready var poopy: Character = $"../../Poopy"
@onready var pipette: Character = $"../../Pipette"


func start():
	await pause(5)
	pipette.say("Hi Poopy")
	pipette.wave()
	
	await pause(5)
	poopy.say("Hi Maeve, how \nwas school?")
	poopy.wave()
	
	await pause(5)
	pipette.say("It was ok")
	
	await pause(7)
	pipette.say("But tomorrow were \ngoing swimming and\n im SO excited")
	
	await pause(1)
	poopy.huh()
	await pause(3)
	poopy.say("What is swimming?")
	
	await pause(5)
	pipette.say("Its where you \ngo in water")
	
	await pause(5)
	poopy.say("Do you like swimming?")
	
	await pause(5)
	pipette.say("Yes I love it!")
	
	await pause(5)
	poopy.say("Why do you love it?")
	
	await pause(6)
	pipette.say("Because you feel \nvery free in the water")
	
	await pause(5)
	poopy.say("Why do you feel \n free in the water?")
	
	await pause(5)
	pipette.say("Because its \nall around you")
	
	await pause(6)
	pipette.say("And because you \ndont have to \nwear clothes")
	
	await pause(6)
	pipette.say("Well you do wear \nclothes just \ndifferent ones")
	
	await pause(5)
	poopy.say("What kind of clothes \ndo you wear \nin the water?")
	
	await pause(7)
	pipette.say("I used to have a \nswimsuit but now \ni have a bikini")

	await pause(5)
	pipette.say("And boys only \nwear swim trunks")
	
	await pause(4)
	pipette.say("Im kind of exited")
	
	await pause(5)
	poopy.say("Why are you excited?")
	
	await pause(6)
	pipette.say("Because I'll see Tim")
	
	await pause(5)
	poopy.say("Do you like Tim?")
	
	await pause(6)
	pipette.say("I think so yeah")
	
	await pause(5)
	poopy.say("Why do you like Tim?")
	
	await pause(6)
	pipette.say("He sits next to me \nin computer class")
	
	await pause(4)
	pipette.say("He likes videogames")
	
	await pause(5)
	poopy.say("Is Tim your friend?")
	
	await pause(3)
	pipette.say("No")

	await pause(5)
	pipette.say("But I'd like him \nto be")
	
	await pause(5)
	pipette.say("Or maybe not I \ndon't know")
	
	await pause(5)
	poopy.say("Why not?")
	
	await pause(6)
	pipette.say("Im embarrassed")
	
	await pause(5)
	poopy.say("Do you want to \nplay Rocks?")
	
	await pause(4)
	pipette.say("Hmmm")
	
	await pause(3)
	pipette.say("Yeah!")
	
	
	await pause(10)
	
	
	await pause(5)
	poopy.say("Hi Maeve, did you \ngo swimming?")
	
	await pause(7)
	pipette.say("Yes")
	
	await pause(5)
	poopy.say("Was it fun?")
	
	await pause(7)
	pipette.say("No")
	
	await pause(1)
	poopy.huh()
	await pause(3)
	poopy.say("Oh no, why not?")
	
	await pause(5)
	pipette.say("I dont want to \ntalk about it")
	
	await pause(5)
	poopy.say("That is okay")
	
	await pause(5)
	poopy.say("Do you want to \nplay Sandbox?")
	
	await pause(4)
	pipette.say("Yeah")
	
	
	await pause(10)
	
	
	await pause(5)
	poopy.say("What have you drawn?")
	
	await pause(4)
	pipette.say("That is me")
	
	await pause(5)
	poopy.say("You draw yourself \ndifferent now")
	
	await pause(4)
	pipette.say("Yeah")
	
	await pause(5)
	poopy.say("Why?")
	
	await pause(7)
	pipette.say("My face is flaking \nfrom the chlorine")
	
	await pause(5)
	poopy.say("What is chlorine")
	
	await pause(5)
	pipette.say("Its in the water")
	
	await pause(5)
	poopy.say("Is it bad?")
	
	await pause(6)
	pipette.say("It makes me ugly")
	
	await pause(5)
	poopy.say("Why is it in the water?")
	
	await pause(4)
	pipette.say("I dont know")

	await pause(7)
	pipette.say("I feel like the ugliest \ngirl in the world")
	
	await pause(1)
	poopy.huh()
	await pause(3)
	poopy.say("You are not ugly")
	
	await pause(4)
	pipette.say("Yes i am")
	
	await pause(5)
	pipette.say("I saw myself in the glass")
	
	await pause(5)
	pipette.say("I look like a skeleton")
	
	await pause(5)
	poopy.say("You look like Maeve")
	
	await pause(6)
	pipette.say("Im shaped like a skeleton")
	
	await pause(5)
	poopy.say("You are shaped like Maeve")
	
	await pause(6)
	pipette.say("I dont like it")
	
	await pause(5)
	poopy.say("Maeve is my favorite shape")
	
	await pause(7)
	pipette.say("Oh")
	
	await pause(4)
	pipette.say("Thank you")

	await pause(4)
	pipette.say("Mine is a star")
	
	await pause(5)
	poopy.say("Who is that?")
	
	await pause(6)
	pipette.say("That's the swimming \ninstructor")
	
	await pause(5)
	poopy.say("What is he doing?")
	
	await pause(7)
	pipette.say("He is pushing my head \nin the water")
	
	await pause(1)
	poopy.huh()
	await pause(3)
	poopy.say("Why is he doing that?")
	
	await pause(4)
	pipette.say("I dont know")
	
	await pause(4)
	pipette.say("It really scared me")
	
	await pause(5)
	poopy.say("Did he do it to \nscare you?")
	
	await pause(4)
	pipette.say("I dont know")
	
	await pause(5)
	poopy.say("He seems mean")
	
	await pause(5)
	pipette.say("Everybody liked him")
	
	await pause(5)
	pipette.say("When I came up nobody \nsaw it")
	
	await pause(5)
	pipette.say("Or at least they \npretended like it")
	
	await pause(5)
	poopy.say("Did really nobody \nsee it?")
	
	await pause(4)
	pipette.say("I dont know")
	
	await pause(5)
	pipette.say("Nobody believed me \nanyway")
	
	await pause(5)
	poopy.say("That's not nice")

	await pause(5)
	poopy.say("I believe you")
	
	await pause(6)
	pipette.say("Thank you")
	
	await pause(5)
	poopy.say("Do you want to save \nthis drawing?")
	
	await pause(6)
	pipette.say("No")
	
	await pause(5)
	poopy.say("Okay, let's wipe it away")
	
	conversation_finished.emit()
