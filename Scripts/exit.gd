class_name Exit
extends Area2D

func _on_body_entered(body):
	if body is PLAYER1:
		Global.game_over.emit()
		print("detected exit")
