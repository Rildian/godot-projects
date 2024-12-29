extends Node

func _ready() -> void:
	var lockers : Dictionary = {
		149: "A pair of shoes",
		"ABC": 12,
		[[53, 101, 27]]: true,
		"sub_dict": {"sub_key": "nested_value"},
		"cor": Color.BLUE_VIOLET
	}

	var dict : Dictionary = {
		"cor": "completely different"
	}

	if lockers.has("cor"):
		print("Tem elementos do dicionario")
	else:
		print("Não tem")

	# dict.has == in -> true
