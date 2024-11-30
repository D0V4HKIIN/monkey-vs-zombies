extends Node2D

@export var SPEED = 50
var word = "BRAIN"
var current = 0
var game_over_scene = preload("res://game_over.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$SignText.text = "[center]" + word + "[/center]"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x -= delta * SPEED
	if position.x <= 400:
		game_over()

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
			
func game_over():
	print("Game over")
	var go_scene = game_over_scene.instantiate()
	get_tree().change_scene_to_file("res://game_over.tscn")
	
