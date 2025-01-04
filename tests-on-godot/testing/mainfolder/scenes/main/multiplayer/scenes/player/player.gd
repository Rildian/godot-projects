extends StaticBody2D
@export var player1 : bool 


func _ready() -> void:
	pass
	

func _process(delta: float) -> void:
	const speed : int = 500
	player_movement(delta, speed)
	limit_position()

func player_movement(delta: float, speed: int) -> void:
	
	if not player1:
		if Input.is_action_pressed("mov_up2"):
			position.y -= speed*delta
		elif Input.is_action_pressed("mov_down2"):
			position.y += speed*delta
	else:
		if Input.is_action_pressed("mov_up1"):
			position.y -= speed*delta
		elif Input.is_action_pressed("mov_down1"):
			position.y += speed*delta

func limit_position() -> void:
	position.y = clamp(position.y, 0, 720)
	
	
