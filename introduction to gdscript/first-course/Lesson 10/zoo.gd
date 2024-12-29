extends Node

@onready var all_animals : Array[Node] = get_children()

func _ready() -> void:
	for animal in all_animals:
		if animal is Mammals:
			animal.nurse()
		animal.speak()