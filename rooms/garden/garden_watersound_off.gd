extends Node2D


func _ready():
	BackgroundSoundEffects.garden_water.volume_linear = 0.
	BackgroundSoundEffects.garden_water.stop()
	
	BackgroundSoundEffects.soup_bubbling.volume_linear = 0.
	BackgroundSoundEffects.soup_bubbling.stop()
