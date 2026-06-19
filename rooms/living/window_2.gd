extends Node2D

@export var window1_scene = "res://rooms/living/window1.tscn"

func _on_error_message_closed():
	get_tree().change_scene_to_file(window1_scene)
