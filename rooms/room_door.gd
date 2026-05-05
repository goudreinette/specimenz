class_name RoomDoor extends TextureButton


@export var next_scene: String


func _on_pressed():
	print("pressed!")
	#get_tree().change_scene_to_packed(next_scene)
	get_tree().change_scene_to_file(next_scene)
	#$AnimationPlayer.play("fadeout")
	


#func _on_animation_player_animation_finished(anim_name):
	#if anim_name == "fadeout":
		#get_tree().change_scene_to_packed(next_scene)
