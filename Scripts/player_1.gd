class_name PLAYER1

extends CharacterBody2D

@export var speed = 400

func _physics_process(delta: float) -> void:
	var input_direction = Input.get_vector("left","right","up","down")
	
	velocity = input_direction * speed
	
	move_and_slide()
