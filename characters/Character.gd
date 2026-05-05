extends Node2D


var start_pos : Vector2 

@export var text_lines : Array[String]


func _ready():
	start_pos = self.get_position()
	print(start_pos)
	

func _process(delta):
	var s: float = remap(position.y, 100, 300, .25, 1.25) # Returns 0.5 position.y
	scale = Vector2(s, s)


func _on_timer_timeout():
	var tween = get_tree().create_tween()
	var new_pos = Vector2(randf_range(-30, 30), randf_range(-20, 50))
	tween.tween_property(self, "position", start_pos + new_pos, 2.0)
	#tween.tween_property($Sprite, "scale", Vector2(), 1.0)
	print(self.name,  "'s TIMER WENT OFF, moving to ")
	$Timer.wait_time = randf_range(1, 7)
	$Timer.start()
