extends Control

func _ready():
	self.visible = false
	$AnimationPlayer.play("blur")


func pause():
	# Pause if not paused
	if not get_tree().paused:
		$".".show()
		get_tree().paused = true
		$AnimationPlayer.play("blur")

		# updates the global variable to hopefully let you go back to the pause menu
		Global.is_level_paused(true)
	# Resume if paused
	else:
		$".".hide()
		get_tree().paused = false
		$AnimationPlayer.play_backwards("blur")

		Global.is_level_paused(false)


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("pause"):
		self.pause()


func _on_resume_pressed():
	self.pause()


func _on_quit_pressed():
	self.pause()
	Global.go_to_scene("res://Scenes/Menus/Main_Menu.tscn")
