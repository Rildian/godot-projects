extends Node

func _ready() -> void:
	
	var deck : Array[int]
	for rank in range(1, 14):
		for suit in 4:
			deck.append(rank)
			if rank == 12:
				break
	deck.shuffle()
	print(deck)
	# i meltdown in this episode

