extends RichTextLabel

var keyword = "BANANA"
var current = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	text = "[center]" + keyword + "[/center]"
	
func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed && OS.get_keycode_string(event.physical_keycode) == keyword[current]:
			current += 1
			print(current)
			if current == keyword.length():
				text = "[center]" + keyword + "[/center]"
				current = 0
				%AmountBananas.add_banana(1)
			text = "[center][b]"
			for i in range(current):
				text += keyword[i]
			text += "[/b]"
			for i in range(current, keyword.length()):
				text += keyword[i]
			text += "[/center]"
