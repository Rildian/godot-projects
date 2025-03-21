extends CharacterBody2D
var char_dir : Vector2
@export var char_speed : int = 100

func _physics_process(_delta: float) -> void:
	movements()
	move_and_slide()

func movements() -> void:
	char_dir.x = Input.get_axis("mov_left", "mov_right")
	char_dir.y = Input.get_axis("mov_up", "mov_down")

	if char_dir:
		velocity = (char_dir*char_speed)
	else:
		velocity *= velocity.move_toward(Vector2.ZERO, char_speed)
		
