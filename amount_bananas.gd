extends Label

var bananas = 0

func add_banana(i: int):
	bananas += i
	text = str(bananas)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
