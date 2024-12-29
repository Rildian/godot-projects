extends StaticBody2D

@export var player1 : bool 
var player_speed : int = 515

func _process(delta : float) -> void:
	player_movement(delta)
	limit_movement()

func player_movement(delta : float) -> void:
	if player1:
		if Input.is_action_pressed("mv-up1"):
			position.y -= player_speed*delta # yeah, down = up, and up = down
		elif Input.is_action_pressed("mv-down1"):
			position.y += player_speed*delta
	else:
		if Input.is_action_pressed("mv-up2"):
			position.y -= player_speed*delta
		elif Input.is_action_pressed("mv-down2"):
			position.y += player_speed*delta


func limit_movement() -> void:
	position.y = clamp(position.y, 65, 656) # limit a value, 72 636
	


