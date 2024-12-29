extends Employee

@export var department : String

func _ready() -> void:
	print(department + " department is ready!")
	print(has_done_work)
