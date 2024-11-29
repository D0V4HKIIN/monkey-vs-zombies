extends Node2D

@export var SPEED = 30
var word = "BRAIN"
var current = 0
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
			print(current)
			if current == word.length():
				queue_free()
			$SignText.text = "[center][b]"
			for i in range(current):
				$SignText.text += word[i]
			$SignText.text += "[/b]"
			for i in range(current, word.length()):
				$SignText.text += word[i]
			$SignText.text += "[/center]"
