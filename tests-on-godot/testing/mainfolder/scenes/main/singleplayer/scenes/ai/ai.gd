extends StaticBody2D

var ball_position : Vector2
var distance : int
var move_by : int


func _ready() -> void:
	pass # Replace with function body.

func _process(delta: float) -> void:
	#ball_position = $"../ball".position()
	#distance = position.y - ball_position.y
	#move_by = get_parent().speed*delta
	#position.y -= move_by
	limit_position()
	
func limit_position() -> void:
	position.y = clamp(position.y, 0, 700)
