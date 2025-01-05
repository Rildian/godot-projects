extends StaticBody2D

var ball_pos : Vector2
var dist : int
var move_by : int
var win_height : int
var p_height : int
const speed : = 500

func _process(delta):
	ball_pos = $"../BallSingle".position
	dist = position.y - ball_pos.y
	
	if abs(dist) > speed * delta:
		move_by = speed * delta * (dist / abs(dist))
	else:
		move_by = dist
	position.y -= move_by
	
	#limit paddle movement to window
	position.y = clamp(position.y, 0, 720)
