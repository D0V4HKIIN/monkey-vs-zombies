class_name MonkeyKeyWordReader
extends RichTextLabel

var keyword = ""
var commando = ""
var current = 0
var number_monkeys = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	keyword = text
	text = "[center]" + text + "[/center]"
	print(keyword)

func show_text():
	text = "[center][b]"
	for i in range(current):
		text += keyword[i]
	for c in commando: 
		text += c
	text += "[/b]"
	for i in range(current, keyword.length()):
		text += keyword[i]
	text += "[/center]"

func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed:
			if current == keyword.length():
				if OS.get_keycode_string(event.physical_keycode).length() == 1:
					commando += OS.get_keycode_string(event.physical_keycode)
			elif OS.get_keycode_string(event.physical_keycode) == keyword[current]:
				current += 1
			elif OS.get_keycode_string(event.physical_keycode).length() == 1:
				current = 0
				commando = ""
			show_text()

var monkey_scene = preload("res://monkey.tscn")

func _process(_delta):
	if Input.is_action_just_pressed("enter"):
		if current == keyword.length():
			var monkey = monkey_scene.instantiate()
			monkey.position = Vector2(number_monkeys % 4, (number_monkeys / 4) % 3) * 100 + Vector2(100, 400)
			get_parent().add_child(monkey)
			number_monkeys += 1
		current = 0
		commando = ""
		show_text()
