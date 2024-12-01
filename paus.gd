class_name PausReader extends KeyWordReader

func do_keyword():
	if get_tree().paused:
		get_tree().paused = false
	else:
		get_tree().paused = true
		%paus.visible = true
