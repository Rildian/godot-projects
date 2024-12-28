extends Node

func _ready() -> void:
	var month : Array

	month = ["January", "February", "March", "April", "May", "June", "July", "Seoptember", "October",
	"November", "December"]

	for i in month:
		print("There are " + str(get_days_in_the_month(i)) + " days in " + str(i))

func get_days_in_the_month(month : String) -> int:
	match month:
		"February":
			return 28
		"April", "June", "September", "November":
			return 30
		_:
			return 31



	
	
