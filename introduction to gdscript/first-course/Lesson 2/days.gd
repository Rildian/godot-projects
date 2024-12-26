extends Node

const DAYS_IN_WEEK : int = 7
var today : String = "Friday"
var date = 12.05
var is_a_holiday : bool = false

func _ready() -> void:
	print("The number of the days in the week is " + str(DAYS_IN_WEEK))
	print("Today is " + today)
	date = "26th december"
	print(date)
	