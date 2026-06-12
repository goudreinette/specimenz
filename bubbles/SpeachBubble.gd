class_name SpeechBubble extends Node2D


@export var margin_top_single_line = 20
@export var margin_bottom_single_line = 40

@export var margin_top_multi_line = 40
@export var margin_bottom_multi_line = 60


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
	var lines = text.split("\n", true)
	print("Setting text balloon label, ", lines.size(), " lines" )
	
	if lines.size() > 1:
		$MarginContainer/MarginContainer.add_theme_constant_override("margin_top", margin_top_multi_line)
		$MarginContainer/MarginContainer.add_theme_constant_override("margin_bottom", margin_bottom_multi_line)
	else:
		$MarginContainer/MarginContainer.add_theme_constant_override("margin_top", margin_top_single_line)
		$MarginContainer/MarginContainer.add_theme_constant_override("margin_bottom", margin_bottom_single_line)
	
