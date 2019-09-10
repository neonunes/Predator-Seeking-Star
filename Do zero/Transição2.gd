extends Area2D


func _on_Transio2_body_entered(body):
	get_tree().change_scene("Game_World3.tscn")
