extends Node2D


@export var SPEED = 30
var word = "brain"
var current = 1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$SignText.text = "[center]" + word + "[/center]"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x -= delta * SPEED

func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed && OS.get_keycode_string(event.physical_keycode) == word[current]:
			current += 1
			# text += OS.get_keycode_string(event.physical_keycode)
