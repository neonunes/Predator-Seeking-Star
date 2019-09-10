extends Control

func _on_Try_again_pressed():
	get_tree().change_scene("res://Game_World.tscn")


func _on_quit_pressed():
	get_tree().quit()