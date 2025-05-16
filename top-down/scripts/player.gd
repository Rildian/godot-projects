extends CharacterBody2D
class_name Player

@export var speed : int = 100
@export var character_dir : Vector2 

func _physics_process(delta: float) -> void:
	
	movements(delta)
	move_and_slide()

func movements(delta) -> void:
	
	character_dir.x = Input.get_axis("mov_left", "mov_right")
	character_dir.y = Input.get_axis("mov_up", "mov_down")
	character_dir = character_dir.normalized()
	
	
	flip()
	
	if character_dir:
		velocity = (character_dir*speed)
		if $sprite.animation != "sprint": $sprite.animation = "sprint"
	else:
		velocity *= velocity.move_toward(Vector2.ZERO, speed)
		if $sprite.animation != "idle": $sprite.animation = "idle"
	
	
func flip() -> void:
	if character_dir.x > 0: $sprite.flip_h = false
	elif character_dir.x < 0: $sprite.flip_h = true


	
