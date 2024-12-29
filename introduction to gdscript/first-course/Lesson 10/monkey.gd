extends Mammals

func _ready() -> void:
	plural = "Monkeys"
	group = "Troop"
	mammaries = 2

func move() -> void:
	print("The " + plural + " climbing trees.")

func eat() -> void:
	print("The " + group + " is eating some Banana")

func speak() -> void:
	print("Ooh ooh ah ah!")

