extends Conversation

@onready var poopy: Character = $"../../Poopy"
@onready var pipette: Character = $"../../Pipette"


func start():
	await pause(1)
	pipette.say("I saw a weird boy \ntoday")
	
	await pause(5)
	poopy.say("Where was the weird \nboy?")
	
	await pause(7)
	pipette.say("He was in mister \nMendelson's office")
	
	await pause(5)
	poopy.say("Why was he there?")
	
	await pause(4)
	pipette.say("I dont know")

	await pause(7)
	pipette.say("Mister Mendelson left \nus alone to go \ndo something")
	
	await pause(7)
	pipette.say("He said he would only \nbe a few minutes but \nthat was totally a lie")
	
	await pause(5)
	poopy.say("Did you talk to the boy?")
	
	await pause(5)
	pipette.say("No i didnt know what \nto say")
	
	await pause(5)
	poopy.say("Did the boy talk to you?")
	
	await pause(3)
	pipette.say("No")
	
	await pause(5)
	pipette.say("It was so stupid")
	
	await pause(7)
	pipette.say("When mister Mendelson \ncame back he told the \nboy he could go")
	
	await pause(7)
	pipette.say("And then he acted like \nthere was never a \nboy at all")
	
	await pause(5)
	pipette.say("Do you know why he \nwas there?")
	pipette.huh()
	
	await pause(5)
	poopy.say("No I don't know")
	
	await pause(4)
	pipette.say("Oh")
	
	await pause(5)
	poopy.say("Maybe he was mister \nMendelson's son?")
	
	await pause(5)
	pipette.say("I don't think so")
	
	await pause(6)
	pipette.say("Mister Mendelson is \nvery old")

	await pause(5)
	poopy.say("Was the boy as \nold as you?")
	
	await pause(3)
	pipette.say("Yes")
	
	await pause(6)
	pipette.say("I think he was also \nbeing treated by \nmister Mendelson")
	
	await pause(5)
	pipette.say("I should have talked \nto him")
	
	await pause(7)
	pipette.say("I feel stupid")
	
	await pause(5)
	poopy.say("Maybe he will be there \nnext time")
	
	await pause(5)
	pipette.say("I hope so")
	
	await pause(15)
	
	conversation_finished.emit()
