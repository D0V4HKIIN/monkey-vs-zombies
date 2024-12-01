extends Node2D

@export var SPEED = 50
var game_over_scene = preload("res://game_over.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x -= delta * SPEED
	if position.x <= 400:
		game_over()

func game_over():
	print("Game over")
	get_tree().change_scene_to_file("res://game_over.tscn")
