extends Node2D

@export var player1_points : int 
@export var player2_points : int

func _on_area_1_area_entered(area: Area2D) -> void:
    player2_points += 1
    print("passou!")

func _on_area_2_area_entered(area: Area2D) -> void:
    player1_points += 1
    print("passou!")
