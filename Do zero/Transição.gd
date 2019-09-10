extends Area2D


func _on_Transio_body_entered(body):
	get_tree().change_scene("Game_World2.tscn")
