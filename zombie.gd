extends Area2D


@export var SPEED = 30
var word = "brain"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$SignText.text = word

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x -= delta * SPEED
