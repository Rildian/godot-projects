extends Animal

func _ready() -> void:
	plural = "Fishes"
	group = "School"

func move() -> void:
	print("The " + plural + " is swimming!")

func eat() -> void:
	print("The " + group +" is eating some plants!")
