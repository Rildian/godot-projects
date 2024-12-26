extends Node

var is_light_on : bool = true
var has_dark_vision : bool = true
var wearing_night_vision_goggles : bool = true
var what_i_heard : String 
var nulo # false by default
# if there's a value, than its true, if there is nothing, then is false

func _ready() -> void:
	# if not is_light_on or has_dark_vision:
	# 	print("i can see")
	# elif has_dark_vision or is_light_on:
	# 	print("i can see")
	# else:
	# 	print("i cant see")

	# if is_light_on != wearing_night_vision_goggles:
	# 	print("i can see")
	# else:
	# 	print("i can't see")

	if nulo:
		print("I heard something")
	else:
		print("i havent heard anything")
		

	
