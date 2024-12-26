extends Node

var number_of_petals : int 
var does_he_loves_me : bool 


func _ready() -> void:
	number_of_petals = randi() % 5

	print("A young lady is holding a beautiful flower with " + str(number_of_petals) + " petals")
	print("Each time she removes a petal from the flower, she declares: ")

	while(number_of_petals) > 0:
		number_of_petals -= 1
		print("**picks petal number** " + str(number_of_petals))
		does_he_loves_me = not(does_he_loves_me)
		print("He loves me" + ("!" if does_he_loves_me else " not :("))


	print("She stand up with tears in her eyes " + 
	("eager to confess her love" if (does_he_loves_me) else "saddened by her unrequited love"))

	# print("She stand up with tears in her eyes " + 
	# ("eager to confess her love" if (number_of_petals % 2) else "saddened by her unrequited love"))
	
	
