extends Resource
class_name Stats

@export var attack : int = 100
@export var defense : int = 200
@export var health : int = 350 

func take_dmg(amount : int) -> void:
	health -= amount
