extends StaticBody2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	const speed : int = 500
	player_movement(delta, speed)
	limit_position()

func player_movement(delta: float, speed: int) -> void:
		if Input.is_action_pressed("mov_up2") or Input.is_action_pressed("mov_up1"):
			position.y -= speed*delta
		elif Input.is_action_pressed("mov_down2") or Input.is_action_pressed("mov_down1"):
			position.y += speed*delta

func limit_position() -> void:
	position.y = clamp(position.y, 0, 700)
