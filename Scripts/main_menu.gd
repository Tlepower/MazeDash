extends Control


func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Levels/level.tscn")


func _on_controls_button_pressed() -> void:
	Global.go_to_scene("res://Scenes/Menus/control.tscn")


func _on_shop_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Menus/shop.tscn")
