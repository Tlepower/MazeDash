## Base class for all doors
class_name Door

extends CharacterBody2D

var door_id: int


func _on_key_taken(key_id: int) -> void:
	# Only open the door if the key is the corresponding one for the door
	# E.g door 1 requires key 1
	
	# If another condition needs to be met and has been met, open it
	if door_id == key_id or self.open_door_if_has_key():
		queue_free()
		print("Removed door ", self.door_id, "\n")
	else:
		print("Key ", key_id, ", not the key for door ", self.door_id, "\n")


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
		Global.door5_open = true
		is_opened = true

	print("is_opened: ", is_opened, "\n")
	return is_opened
