extends Node2D

var player1_points : int 
var player2_points : int
@onready var show_player1_points : Label = $"../UI/PainelDePontuacao/Player1"
@onready var show_player2_points : Label = $"../UI/PainelDePontuacao/Player2"
@onready var ball_functions : Area2D = $"../Ball"
@onready var point_impact : AudioStreamPlayer = $PointSound

func inputs() -> void:
	if Input.is_action_just_pressed("restart"):
		get_tree().reload_current_scene() # acess the whole scene and restart
	if Input.is_action_just_pressed("exit"):
		get_tree().quit() 

func _process(delta: float) -> void:
	inputs()

func _on_area_1_area_entered(area: Area2D) -> void:
	point_impact.play()
	player2_points += 1
	show_player2_points.text = str(player2_points) # -> change the UI text
	OS.delay_msec(350.000)
	ball_functions.reset_ball()
	 

func _on_area_2_area_entered(area: Area2D) -> void:
	point_impact.play()
	player1_points += 1
	show_player1_points.text = str(player1_points) # -> change the UI text
	OS.delay_msec(350.000)
	ball_functions.reset_ball()
 
