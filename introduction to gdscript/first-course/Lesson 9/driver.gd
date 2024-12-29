extends Node

@onready var car : Car = $Car

func _ready() -> void:
	print("im ready to drive my car " + str(car.year) + " " + str(car.make) + " " + str(car.model))
	car.set_brake_pedal_pressure(10)
	car.is_engine_on = true
	print("I have started the car!")
	print("This is the amount of cylinders my car has: " + str(car._cylinders))
