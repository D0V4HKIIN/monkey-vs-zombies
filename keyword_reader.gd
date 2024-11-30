class_name KeyWordReader
extends RichTextLabel

var keyword = ""
var current = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	keyword = text
	text = "[center]" + text + "[/center]"

func show_text():
	text = "[center][b]"
	for i in range(current):
		text += keyword[i]
	text += "[/b]"
	for i in range(current, keyword.length()):
		text += keyword[i]
	text += "[/center]"

func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed && OS.get_keycode_string(event.physical_keycode) == keyword[current]:
			current += 1
			if current == keyword.length():
				do_keyword()
			show_text()

		elif event.pressed && OS.get_keycode_string(event.physical_keycode).length() == 1:
			current = 0
			show_text()

func do_keyword():
	print("this should be extended")
