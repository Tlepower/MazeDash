extends Node

var previous_scene = null
var is_paused: bool = false


func is_level_paused(new_is_paused: bool) -> void:
	is_paused = new_is_paused


func get_current_scene():
	return get_tree().current_scene.scene_file_path

func set_new_previous_scene():
	print("set_new_previous_scene() invoked")
	previous_scene = get_current_scene()
	print("previous scene now set to: \"", previous_scene, "\"\n")


func go_to_scene(new_scene_path):
	print("go_to_scene invoked")
	set_new_previous_scene()
	get_tree().change_scene_to_file(new_scene_path)
	print("Scene changed to: \"", previous_scene, "\"\n")

func go_back():
	print("invoked go_back()")
	if previous_scene != null:
		if is_paused:
			print("Paused -> Controls -> Back")
			
			print()
			$".".hide()
			get_tree().paused = false
			$AnimationPlayer.play_backwards("blur")
			go_to_scene("res://Scenes/Menus/pause_menu.tscn")
		
		print("Got into condition")
		go_to_scene(previous_scene)
	else:
		print("Failed\n -- previous_scene: \"", previous_scene, "\"")
