class_name Key
extends Area2D

func _on_body_entered(body):
	if body is PLAYER1:
		print("detected player touching")
		
		
		queue_free()
		print("removed key")
