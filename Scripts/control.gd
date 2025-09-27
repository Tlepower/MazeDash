extends Control

func _process(delta):
	goback()

func goback():
	if Input.is_action_just_pressed("tab"):
		get_tree().quit()
		#get_tree().change_scene_to_file("res://Scenes/Menus/pause_menu.tscn")

#func goback():
	#if Input.is_action_just_pressed("tab"):
		#get_tree().change_scene_to_file("res://Scenes/Menus/pause_menu.tscn")
