extends Label

var keywords = ["banana"]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _unhandled_input(event):
	if event is InputEventKey:
		if text.length() > 10:
			text = ""
		if event.pressed:
			text += OS.get_keycode_string(event.physical_keycode)
		if keywords.find(text):
			show_banana()
			
			

	
	
