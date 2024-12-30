extends Area2D

var ball_speed : int = 520
var initial_position : Vector2 = Vector2(640, 360) #x-y directions
var new_direction : Vector2
var y_min : float = 0
var x_min : float = 0
var y_max : float = 720
var x_max : float = 1280
@onready var barrier_impact : AudioStreamPlayer = $ImpactOfTheBarrier
@onready var impact_player : AudioStreamPlayer = $ImpactOfThePlayer


func _ready() -> void:
	reset_ball()


func _process(delta : float) -> void:
	movement_ball(delta)
	colision_with_walls()


func choose_direction() -> void:
	# choosing the initial direction randoming
	var random_x : int = [-1, 1].pick_random()
	var random_y : int = [-1, 1].pick_random()
	new_direction = Vector2(random_x, random_y)


func reset_ball() -> void:
	position = initial_position
	choose_direction()


func movement_ball(delta : float) -> void:
	position += new_direction*ball_speed*delta # the current position (x,y) is changed by new_direction


func colision_with_walls() -> void:
	if position.y >= y_max or position.y <= y_min:
		barrier_impact.play()
		new_direction.y *= -1
		
func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		impact_player.play()
		new_direction.x *= -1
