class_name SpeechBubble extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var tween = get_tree().create_tween()
	tween.tween_property(self, "position:y", -100, 20.0)
	#tween.tween_property($Sprite, "opacity", Vector2(), 10.0)
	tween.tween_callback(self.queue_free)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func set_text(text: String):
	$MarginContainer/MarginContainer/Label.text = text
