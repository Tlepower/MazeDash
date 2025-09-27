extends Control

# Called when the nore enters the scene for the first time
func _ready():
	pass

# Called every frame
func _process(delta):
	pass


func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Levels/level.tscn")


func _on_controls_button_pressed() -> void:
	print("Show Controls")


func _on_shop_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Menus/shop.tscn")
