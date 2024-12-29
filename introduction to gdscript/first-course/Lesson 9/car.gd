class_name Car extends Node

@export var year : int
@export var make : String
@export var model : String

var is_engine_on : bool # public
var _cylinders : int = 4 # private


func set_brake_pedal_pressure(pressure : float) -> void:
	var brake_pedal_position : float
	brake_pedal_position = _get_brake_pedal_position(pressure)
	_activate_anti_lock_brakes(brake_pedal_position)
	_set_brake_caliper_pressure(brake_pedal_position)

#region private
func _get_brake_pedal_position(pressure : float) -> float:
	var brake_pedal_position : float
	return brake_pedal_position

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass
func _activate_anti_lock_brakes(position : float):
	pass

func _set_brake_caliper_pressure(position : float):
	pass

#endregion
