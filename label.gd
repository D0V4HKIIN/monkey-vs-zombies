extends Label

var keyword = "BANANA"
	
func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed && OS.get_keycode_string(event.physical_keycode).length() == 1:
			text += OS.get_keycode_string(event.physical_keycode)

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("enter"):
		if text == "BANANA":
			%AmountBananas.add_banana(1)
		text = ""
		
