class_name Enemy

extends CharacterBody2D

@onready var target=$"../PLAYER1"
var speed=350


func _physics_process(_delta):
	var direction = (target.position - position).normalized()
	velocity = direction * speed
	look_at(target.position)
	move_and_slide()


func _on_area_2d_for_enemy_body_entered(body) -> void:
	# End the game if the enemy catches the player
	if body is PLAYER1:
		Global.game_over.emit(false)
