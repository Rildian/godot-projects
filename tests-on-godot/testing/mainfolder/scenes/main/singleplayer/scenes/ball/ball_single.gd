extends CharacterBody2D

@onready var player : StaticBody2D = $"../PlayerSingle"
var texture_original = load("res://mainfolder/assets/sprites/bola.png")
var texture_switch = load("res://mainfolder/assets/sprites/bola2.png")
var initial_position : Vector2 = Vector2(640, 360)
var new_direction : Vector2 
var ball_speed : int = 400

func _ready() -> void:
	reset_ball()

func reset_ball() -> void:
	position = initial_position
	random_direction()

func movement_ball(delta) -> void:
	position += new_direction * ball_speed * delta

func random_direction() -> void:
	var random_x = [-1, 1].pick_random()
	var random_y = [-1, 1].pick_random()
	new_direction = Vector2(random_x, random_y)

func _process(delta: float) -> void:
	movement_ball(delta)
	dont_go_away()

func change_sprites() -> void:
	if $SpriteBall.texture == texture_original:
		$SpriteBall.set_texture(texture_switch)
	else:
		$SpriteBall.set_texture(texture_original)

func dont_go_away() -> void:
	if position.y >= 720 or position.y <= 0:
		new_direction.y *= -1
	if position.x >= 1280 or position.x <= 0:
		new_direction.x *= -1

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		change_sprites()
		new_direction.x *= -1

func _physics_process(delta: float) -> void:
	
		
