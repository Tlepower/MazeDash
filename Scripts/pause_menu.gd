extends Control

func _ready():
	self.visible = false
	$AnimationPlayer.play("blur")

func resume():
	$".".hide()
	get_tree().paused = false
	$AnimationPlayer.play_backwards("blur")
	
func pause():
	$".".show()
	get_tree().paused = true
	$AnimationPlayer.play("blur")

	# updates the global variable to hopefully let you go back to the pause menu
	Global.is_level_paused(true)

	
func testEsc():
	if Input.is_action_just_pressed("space") and get_tree().paused == false:
		pause()
	elif Input.is_action_just_pressed("space") and get_tree().paused == true:
		resume()

func _on_resume_pressed():
	resume()

func _on_quit_pressed():
	get_tree().quit()

func _process(_delta):
	testEsc()
