class_name Enemy

extends Area2D

func _ready() -> void:
	position += Vector2(600,0)
	#connect("body_entered", _on_body_entered)
	

func _on_body_entered(body):
	if body is PLAYER1:
		print("Game over")
		call_deferred("end_game")

func end_game():
	get_tree().change_scene_to_file("res://Scenes/Menus/Main_Menu.tscn")
