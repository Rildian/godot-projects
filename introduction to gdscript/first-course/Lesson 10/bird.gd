extends Animal

func _ready() -> void:
	plural = "Birds"
	group = "Flock"

func move() -> void:
	print("The " + group + " is flying!")

func eat() -> void:
	print("The" + plural + " is eating some worms")

func speak() -> void:
	print("Chick-a-dee-dee")