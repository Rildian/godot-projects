extends Node

# var main_street2 : Array[int] = [] same thing


func _ready() -> void:
	
	var main_street : Array
	# var sum : float 
	# var count : float  

	# main_street.resize(6)
	# main_street[0] = 5
	# main_street[1] = 2
	# main_street[2] = 0
	# main_street[3] = -1
	# main_street[4] = -2
	# main_street[5] = -3 

	# for i in range(len(main_street)):
	# 	if main_street[i] > 0:
	# 		sum += float(main_street[i]) # -> this is casting, type conversion
	# 		count += 1
	# print("Average of citzens is: " + str(sum/count))

	main_street.resize(6)
	main_street[0] = 5
	main_street[1] = ["Jordan", "Isabela"]
	main_street[2] = false
	main_street[3] = true
	main_street[4] = -2
	main_street[5] = null

	print(main_street[1].size())
	# print(main_street[0].size()) n funciona, so com listas por ex


