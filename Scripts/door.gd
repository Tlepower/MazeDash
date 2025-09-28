class_name Door

extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body is PLAYER1:
		print("detected player touching")
