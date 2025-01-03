extends Sprite2D


func _on_texture_changed() -> void:
	 if texture != get_parent().texture_original:
		texture = get_parent().texture_original
	else:
		texture = get_parent().texture_switch 
	
