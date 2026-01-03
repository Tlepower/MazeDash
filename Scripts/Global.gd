extends Node

var previous_scene = null
var is_paused: bool = false

# Key tracking booleanss
var key1_taken = false
var key2_taken = false
var key3_taken = false
var key4_taken = false

# Door tracking booleans
var door1_open = false
var door2_open = false
var door3_open = false
var door4_open = false
var door5_open = false

# Game over signal
signal game_over(player_won: bool)


func _ready():
	game_over.connect(end_game)


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

## Sets all variables back to their initial values
func reset_all_accesses():
	#var previous_scene = null # Should leave addddddddd
	var is_paused: bool = false

	# Key tracking booleanss
	key1_taken = false
	key2_taken = false
	key3_taken = false
	key4_taken = false

	# Door tracking booleans
	door1_open = false
	door2_open = false
	door3_open = false
	door4_open = false
	door5_open = false


func end_game(player_won: bool):
	if player_won:
		go_to_scene("res://Scenes/Menus/you_win.tscn")
	else:
		go_to_scene("res://Scenes/Menus/you_lose.tscn")
	reset_all_accesses()
