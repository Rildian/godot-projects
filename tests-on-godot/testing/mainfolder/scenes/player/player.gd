extends StaticBody2D

var speed : int = 500

func _ready() -> void:
	position.x = 640
	position.y = 320
	

func _process(delta: float) -> void:
	player_movement(delta)
	limit_position()

func player_movement(delta: float) -> void:
	if Input.is_action_pressed("mov_right"):
		position.x += speed*delta
	elif Input.is_action_pressed("mov_left"):
		position.x -= speed*delta
	elif Input.is_action_pressed("mov_up"):
		position.y -= speed*delta
	elif Input.is_action_pressed("mov_down"):
		position.y += speed*delta

func limit_position() -> void:
	position.y = clamp(position.y, 15, 700)
	position.x = clamp(position.x, 3, 1145)
	
