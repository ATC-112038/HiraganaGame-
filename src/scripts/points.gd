extends TextEdit

func load_txt(path: String) -> String:
	var file = FileAccess.open(path, FileAccess.READ)
	
	if file == null:
		return "null"
	var content = file.get_as_text()
	
	return content

func _process(delta: float) -> void:
	$".".text = "Points = " + load_txt("res://data/points.txt")
