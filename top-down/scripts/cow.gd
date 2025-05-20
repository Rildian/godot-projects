extends CharacterBody2D

enum COW_STATE { IDLE, WALK }

@export var move_speed : float = 200
@export var idle_timer : float = 5
@export var walk_timer : float = 2

@onready var animation_tree : AnimationTree = $StateMachine
@onready var state_machine = animation_tree.get("parameters/playback")
@onready var sprite : Sprite2D = $Sprite2D
@onready var timer : Timer = $Timer

var move_direction : Vector2 = Vector2.ZERO
var current_state : COW_STATE = COW_STATE.IDLE

func _ready() -> void:
	select_new_direction()
	pick_new_state()


func _physics_process(delta: float) -> void:
	if (current_state == COW_STATE.WALK):
		velocity = (move_direction * move_speed * delta)
		
	move_and_slide()


func select_new_direction():
	move_direction = Vector2(
		randi_range(-1,1),
		randi_range(-1,1)
	).normalized()
	
	if (move_direction.x < 0):
		sprite.flip_h = true
	elif (move_direction.x > 0):
		sprite.flip_h = false
		

func pick_new_state():
	if(current_state == COW_STATE.IDLE):
		state_machine.travel("walk_right")
		current_state = COW_STATE.WALK
		timer.start(walk_timer)
	elif(current_state == COW_STATE.WALK):
		state_machine.travel("idle_right")
		current_state = COW_STATE.IDLE
		velocity = Vector2.ZERO
		timer.start(idle_timer)


func _on_timer_timeout() -> void:
	pick_new_state()
