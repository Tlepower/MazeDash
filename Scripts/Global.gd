extends Node

var previous_scene = null

func go_to_scene(new_scene_path):
	previous_scene = get_tree().current_scene.scene_file_path
	get_tree().change_scene_to_file(new_scene_path)

func go_back():
	if previous_scene:
		get_tree().change_scene(previous_scene)
