extends Area2D

func _on_body_entered(body):
	if body is PLAYER1:
		print("Game over")
		call_deferred("end_game")

func end_game():
	get_tree().change_scene_to_file("res://Scenes/Menus/Main_Menu.tscn")
