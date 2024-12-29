extends Node2D
# use $"../Ball"
# somehow @onready var ball: Area2D = $Ball result null
# $"UI/PainelDePontuacao/Player1"
# $"..UI/PainelDePontuacao/Player2"

var player1_points : int 
var player2_points : int

func _on_area_1_area_entered(area: Area2D) -> void:
    player2_points += 1
    OS.delay_msec(200.000)
    $"../Ball".reset_ball()
    #$"UI/PainelDePontuacao/Player1".text = str(player2_points)

func _on_area_2_area_entered(area: Area2D) -> void:
    player1_points += 1
    OS.delay_msec(200.000)
    $"../Ball".reset_ball()
    #$"UI/PainelDePontuacao/Player2".text = str(player1_points)
