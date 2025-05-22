extends CharacterBody2D
class_name EnemyDino

func _process(_delta: float) -> void:
	move_and_collide(velocity*_delta)
