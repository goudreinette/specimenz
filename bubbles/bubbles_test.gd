extends CanvasLayer

@export var bubble_max_width = 50
@export var bubble_max_lines = 3

@export var horizontal_margin := 2
@export var font_size := 1.3
@export var font_line_height_size = 10


@onready var speech_line := $SpeechBubble/SpeechLine
@onready var tilemap := $SpeechBubble

var all_text_displayed: bool = false

enum speaker_direction {LEFT, RIGHT, UP, DOWN}
var bubble_default_screen_positions := {speaker_direction.LEFT: 10,
										speaker_direction.RIGHT: 70,
										speaker_direction.UP: 10,
										speaker_direction.DOWN: 100}

func display_next_text():
	pass

func build_bubble(text: String, bubble_side: speaker_direction,
				 	#Optional Params				
					sizzle: int = 4,
					bubble_height: int = bubble_default_screen_positions[speaker_direction.UP]) -> void:
		
	all_text_displayed = false
	tilemap.clear()

	# This looks at either making the speech bubble the size of
	# the supplied text, or the hardcoded max width defined above
	var ideal_bubble_width := 0
	var lines_required := 1
	if text.length() * font_size > bubble_max_width:
		ideal_bubble_width = bubble_max_width
		
		# We want to find how many lines of text it will need to display the bubble
		# This helps us understand how tall to make the speech bubble
		lines_required += ceil(text.length() / bubble_max_width)
		if lines_required > bubble_max_lines:
			lines_required = bubble_max_lines
	else:
		ideal_bubble_width = text.length() * font_size
			
	var arr_cell := []
	# Creates an array of cells to build the speech bubble using some slight pixel randomness with
	# the sizzle parameter to add some liveliness if wanted
	var bubble_sizzle := randi_range(0, sizzle) 
	for x in range(bubble_default_screen_positions[bubble_side] + bubble_sizzle,
					bubble_default_screen_positions[bubble_side] + ideal_bubble_width + bubble_sizzle):
		for y in range(bubble_height, bubble_height + (lines_required * 4)):
			arr_cell.append(Vector2i(x,y))
	
	# Uses the tilemap to build the autotiled speech bubble
	tilemap.set_cells_terrain_connect(arr_cell, 0, 0, false)
	speech_line.text = text
	
	# Find the properties of the drawn autotiled rectangle and assign the label's
	# size and position to ensure it stays within those boundaries
	# There are some small pixel adjustments in the + and - that may be really bad, but it works 
	# for the default font right now
	var used_rect: Rect2i = tilemap.get_used_rect()
	speech_line.position = (tilemap.map_to_local(used_rect.position) + Vector2(horizontal_margin, -2))
	speech_line.size = (tilemap.map_to_local(used_rect.size) - Vector2(horizontal_margin + 10, font_line_height_size))

func _input(event: InputEvent) -> void:
		# Just here to see a new bubble draw and size differently
	if event.is_action_pressed("click"):
		build_bubble("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip",
					 speaker_direction.RIGHT, 4, 20)
		
	
func _ready() -> void:
	build_bubble("Dynamic text?", speaker_direction.LEFT)
