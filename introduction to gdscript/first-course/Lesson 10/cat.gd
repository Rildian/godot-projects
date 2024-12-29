extends Mammals

func _ready() -> void:
	plural = "Cats"
	group = "Clowder"
	mammaries = 8

func move() -> void:
	print("The " + plural + " is walking w/ 4 legs searching for food.")

func eat() -> void:
	print("The " + group + " is eating some fish.")

func speak() -> void:
	print("Meow.")

