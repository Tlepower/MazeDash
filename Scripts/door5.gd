## For use only for Door 5
class_name Door5
extends Door

func _ready():
	## Hard code the key id at the start
	door_id = 5

func _process(_delta: float):
	if Global.door5_open:
		print("Can now open door 5 (finish line)")
		Global.go_to_scene("res://Scenes/Menus/you_win.tscn")
