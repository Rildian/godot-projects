extends Area2D

#var ball_texture = preload("res://main folder/assets/sprites/bola.png")
sprite_ball : Sprite2D = $SpriteBall

func _ready() -> void:
	position.x = 640
	position.y = 320

func _process(delta: float) -> void:
	pass

func chage_sprites() -> void:
	var texture = load("res://main folder/assets/sprites/bola.png")

func _on_area_entered(area: Area2D) -> void:
	change_sprites()
