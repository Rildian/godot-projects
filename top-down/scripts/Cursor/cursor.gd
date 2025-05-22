extends Node

var lol = load("res://assets/resources/lol.png")

func _ready() -> void:
	Input.set_custom_mouse_cursor(lol)
