extends Node2D


var start_pos : Vector2 

@export var text_lines : Array[String]
@export var last_frame_pos : Vector2 = self.position


func _ready():
	start_pos = self.get_position()
	print(start_pos)
	

func _process(delta):
	# Set scale (fake perspective)
	var s: float = remap(position.y, 100, 300, .25, 1.25) # Returns 0.5 position.y
	scale = Vector2(s, s)
	
	# Set animation frames!
	var going_left = self.position.x - last_frame_pos.x < 0
	var going_up = self.position.y - last_frame_pos.y < 0
	var distance: float = self.position.distance_to(last_frame_pos)
	
	if distance > .05:
		if going_left:
			if going_up:
				$AnimatedSprite2D.play("left_backward")
			else:
				$AnimatedSprite2D.play("left_forward")
		else:
			if going_up:
				$AnimatedSprite2D.play("right_backward")
			else:
				$AnimatedSprite2D.play("right_forward")
	else: 
		$AnimatedSprite2D.play("default")
			
	
	
		
	last_frame_pos = self.position


func _on_timer_timeout():
	var tween = get_tree().create_tween()
	var new_pos = Vector2(randf_range(-30, 30), randf_range(-20, 100))
	tween.tween_property(self, "position", start_pos + new_pos, 2.0)
	#tween.tween_property($Sprite, "scale", Vector2(), 1.0)
	print(self.name,  "'s TIMER WENT OFF, moving to ")
	$Timer.wait_time = randf_range(1, 7)
	$Timer.start()
