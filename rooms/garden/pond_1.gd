extends Node2D


func _ready():
	if not BackgroundSoundEffects.garden_water.playing:
		BackgroundSoundEffects.garden_water.play()
	
	BackgroundSoundEffects.garden_water.volume_linear = 1.
