class_name Employee extends Node

var has_done_work : bool

# func _ready() -> void:
# 	print(name + " is ready!")
# 	# o pai depende do filho, 

func _process(delta: float) -> void:
	# o filho depende do pai
	if not has_done_work:
		print(name + " does work.")
		has_done_work = true
