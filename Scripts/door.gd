## Base class for all doors
class_name Door

extends Area2D

var door_id: int
func _on_body_entered(body: Node2D) -> void:
	if body is PLAYER1 and self.open_door_if_has_key():
		print("detected player touching")

		queue_free()
		print("removed door")
	
		# Otherwise the dor is unmoveabke


## Changes the Global boolean indicating whether or not a specific key was taken
func open_door_if_has_key() -> bool:
	var is_opened: bool = false

	if self.door_id == 1 and Global.key1_taken == true:
		print("1")
		Global.door1_open = true
		is_opened = true
	elif self.door_id == 2 and Global.key2_taken == true:
		print("2")
		Global.door2_open = true
		is_opened = true
	elif self.door_id == 3 and Global.key3_taken:
		print("3")
		Global.door3_open = true
		is_opened = true
	elif self.door_id == 4 and Global.key4_taken:
		print("4")
		Global.door4_open = true
		is_opened = true
	elif self.door_id == 5 and Global.key1_taken and Global.key2_taken and Global.key3_taken:
		print("5")
		Global.door4_open = true
		is_opened = true

	print("is_opened: ", is_opened)
	return is_opened
