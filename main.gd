extends Node2D


var SPAWN_RATE = 5
var cooldown = SPAWN_RATE
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

var zombie_scene = preload("res://zombie.tscn")

func spawn_zombie():
	var zombie = zombie_scene.instantiate()
	zombie.position = Vector2(1200, randi_range(0, 2) * 150 + 250)
	add_child(zombie)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	cooldown -= delta
	if cooldown <= 0:
		spawn_zombie()
		cooldown = SPAWN_RATE
	if Input.is_action_just_pressed("zombie"):
		spawn_zombie()
