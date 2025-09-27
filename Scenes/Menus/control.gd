extends Control

func goback():
	if Input.is_action_just_pressed("space"):
		get_tree().change_scene_to_file("res://Scenes/Menus/pause_menu.tscn")
