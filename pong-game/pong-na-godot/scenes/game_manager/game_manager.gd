extends Node2D

var player1_points : int 
var player2_points : int
@onready var show_player1_points : Label = $"../UI/PainelDePontuacao/Player1"
@onready var show_player2_points : Label = $"../UI/PainelDePontuacao/Player2"
@onready var ball_functions : Area2D = $"../Ball"

func _on_area_1_area_entered(area: Area2D) -> void:
	player2_points += 1
	show_player2_points.text = str(player2_points)
	OS.delay_msec(200.000)
	ball_functions.reset_ball()
	 

func _on_area_2_area_entered(area: Area2D) -> void:
	player1_points += 1
	show_player1_points.text = str(player1_points)
	OS.delay_msec(200.000)
	ball_functions.reset_ball()
 
