class_name Conversation extends Node

signal conversation_finished


func start():
	print("Please write a start() function in your conversation!")


func pause(t):
	return get_tree().create_timer(t).timeout 

	
