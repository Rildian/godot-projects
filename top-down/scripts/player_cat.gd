extends CharacterBody2D
@export var char_speed : float = 100
@onready var animation_tree : AnimationTree = $StateMachine
@export var start_pos : Vector2 = Vector2(0, 1)
@onready var state_machine = animation_tree.get("parameters/playback")
# playback? from state_machine? changes the state

#parameters/idle/blend_position

func _ready() -> void:
	update_animations(start_pos)

func _physics_process(_delta: float) -> void:
	movements()
	move_and_slide() # understanding what is this
	pick_new_state()

func movements() -> void:
	var input_directions : Vector2 = Vector2(
		Input.get_action_strength("mov_right") - Input.get_action_strength("mov_left"),
		Input.get_action_strength("mov_down") - Input.get_action_strength("mov_up")
	)
	input_directions = input_directions.normalized()
	# velocity is a chaaracterbody2d built int
	update_animations(input_directions)
	velocity = input_directions * char_speed
	
		
func update_animations(directions : Vector2) -> void:
	if (directions != Vector2.ZERO):
		animation_tree.set("parameters/walk/blend_position", directions)
		animation_tree.set("parameters/idle/blend_position", directions)
		
func pick_new_state():
	if velocity != Vector2.ZERO:
		state_machine.travel("walk")
	else:
		state_machine.travel("idle")
