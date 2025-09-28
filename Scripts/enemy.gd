class_name Enemy

extends CharacterBody2D

@onready var target=$"../PLAYER1"
var speed=350

	
func _on_body_entered(body):
	if body is PLAYER1:
		print("Game over")
		call_deferred("end_game")

func end_game():
	get_tree().change_scene_to_file("res://Scenes/Menus/Main_Menu.tscn")

func _physics_process(_delta):
	var direction=(target.position-position).normalized()
	velocity=direction*speed
	look_at(target.position)
	move_and_slide()


func _on_area_2d_for_enemy_body_entered(body) -> void:
	if body is PLAYER1:
		print("Game over")
		call_deferred("end_game")
