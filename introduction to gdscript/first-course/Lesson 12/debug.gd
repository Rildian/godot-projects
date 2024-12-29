extends Node

var color : Color = Color.RED
var hightlight : Color
var shade : Color
var amount : float = 0.5

func _process(delta: float) -> void:
	color.b += delta
	print("Value of color is: " + str(color.b))
	
	
