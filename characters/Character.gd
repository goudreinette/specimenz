class_name Character extends Node2D


@export var text_bubble : PackedScene


var start_pos : Vector2 
@export var last_frame_pos : Vector2 = self.position
@export var target_pos : Vector2 = self.position
@export var SPEED = 30


enum CharacterState {
	Idle, Talking, Walking, Waving, Sighing, Huh
}

var state: CharacterState = CharacterState.Idle
var current_walking_tween: Tween



func _ready():
	start_pos = self.get_position()
	print(start_pos)
	walk_to_new_location()

func _process(delta):
	# Set scale (fake perspective)
	var s: float = remap(position.y, 100, 300, .25, 1.25) # Returns 0.5 position.y
	scale = Vector2(s, s)
	
	# Set animation frames!
	var left_right_diff = self.position.x - last_frame_pos.x
	var up_down_diff = self.position.y - last_frame_pos.y
	var going_left = left_right_diff < 0
	var going_up = up_down_diff < 0
	var distance: float = self.position.distance_to(last_frame_pos)
	
	var walking: bool = distance > 0.0
	var threshold = .125
	
	if state == CharacterState.Talking:
		$AnimatedSprite2D.play("talking")
	elif state == CharacterState.Waving:
		$AnimatedSprite2D.play("waving")
	elif state == CharacterState.Sighing:
		$AnimatedSprite2D.play("big sigh")
	elif state == CharacterState.Huh:
		$AnimatedSprite2D.play("huh")
	elif walking:
		var direction: Vector2 = self.position.direction_to(target_pos)
		
		if abs(direction.x) < abs(threshold): # Not walking left/right
			if direction.y > threshold:
				$AnimatedSprite2D.play("front")
			elif direction.y < -threshold:
				$AnimatedSprite2D.play("back")
			else:
				$AnimatedSprite2D.play("idling")
		elif direction.x > threshold:
			if direction.y > threshold:
				$AnimatedSprite2D.play("right_forward")
			elif direction.y < -threshold:
				$AnimatedSprite2D.play("right_backward")
			else: 
				$AnimatedSprite2D.play("right")
		elif direction.x < -threshold:
			if direction.y > threshold:
				$AnimatedSprite2D.play("left_forward")
			elif direction.y < -threshold:
				$AnimatedSprite2D.play("left_backward")
			else:
				$AnimatedSprite2D.play("left")
	else:
		$AnimatedSprite2D.play("idling")

	last_frame_pos = self.position


func walk_to_new_location():
	current_walking_tween =  get_tree().create_tween()
	var new_pos =  start_pos +  Vector2(randf_range(-30, 30), randf_range(-30, 70))
	#var distance = self.position.distance_to(new_pos)
	#var walk_duration = remap(distance, 0, 200, 0.0, 1.0)
	var distance = (position).distance_to(new_pos)
	var tween_time = distance / SPEED
	print(position, new_pos)
	current_walking_tween.tween_property(self, "position", new_pos, tween_time)
	target_pos = new_pos
	#tween.tween_property($Sprite, "scale", Vector2(), 1.0)
	var next_duration = randf_range(5, 10)
	print(self.name,  "'s TIMER WENT OFF, moving to ", new_pos)
	print(self.name,  "'s next timer in ", next_duration)
	$Timer.start(next_duration)
	state = CharacterState.Walking 


func _on_timer_timeout():
	if state == CharacterState.Idle: 
		walk_to_new_location()
	else:
		var next_duration = randf_range(5, 10)
		$Timer.start(next_duration)

func _on_talking_timer_timeout():
	state = CharacterState.Idle
	current_walking_tween = null
	_on_timer_timeout()	
	
	


# Actions ------------------------------------------------------

@export var last_sound_i = 0

func say(text: String):
	print("saying: ", text)
	var new_bubble: SpeechBubble = text_bubble.instantiate()
	new_bubble.position = position
	new_bubble.set_text(text)
	if current_walking_tween:
		current_walking_tween.kill()
	$TalkingTimer.start(3)
	state = CharacterState.Talking
	get_parent().add_child(new_bubble)
	
	# Sounds
	var length = text.split(" ", true).size()
	var sounds = $TalkingSounds.get_children()
	last_sound_i = (last_sound_i + 1) % sounds.size()
	var playback_length = remap(length, 0, 20, 0, 5)
	sounds[last_sound_i].play(5 - playback_length)
	#$TalkingSounds/PipetteTalk15Sec.play(5 - )
	
func sigh():
	state = CharacterState.Sighing
	
func huh():
	state = CharacterState.Huh
	
func wave():
	state = CharacterState.Waving
	
	
func _on_animated_sprite_2d_animation_finished():
	if state == CharacterState.Sighing:
		state = CharacterState.Idle
	if state == CharacterState.Huh:
		state = CharacterState.Idle
	if state == CharacterState.Waving:
		state = CharacterState.Idle
