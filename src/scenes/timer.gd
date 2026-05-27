extends TextEdit

func _process(delta: float) -> void:
	$".".text = str(int($"../Timer".time_left))
