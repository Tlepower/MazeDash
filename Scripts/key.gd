## Base class for all keys
class_name Key

extends Area2D

var key_id: int
signal key_taken(key_id: int)


func _on_body_entered(body):
	if body is PLAYER1:
		print("detected player touching")
		self.take_key()

		queue_free()
		print("removed key")


## Changes the Global boolean indicating whether or not a specific key was taken
func take_key():
	if self.key_id == 1:
		Global.key1_taken = true
	elif self.key_id == 2:
		Global.key2_taken = true
	elif self.key_id == 3:
		Global.key3_taken = true
	elif self.key_id == 4:
		Global.key4_taken = true
	
	# Send a signal for the doors to let it know that its corresponding key has been taken
	key_taken.emit(self.key_id)

	print("Key ", self.key_id, " taken")
