extends Area2D




func _on_TransioVitria_body_entered(body):
	get_tree().change_scene("res://Victory.tscn")
