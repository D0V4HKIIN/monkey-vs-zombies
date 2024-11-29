extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

var zombie_scene = preload("res://zombie.tscn")

func spawn_zombie():
	print("zombie")
	var zombie = zombie_scene.instantiate()
	add_child(zombie)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("zombie"):
		spawn_zombie()
