extends CharacterBody2D

@export var speed = 500

func get_input():
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_direction * speed
	if Input.is_action_pressed("ui_cancel"):
		get_tree().quit();

func _physics_process(delta):
	get_input()
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	$"../Label".set_text(str(Time.get_ticks_usec()/1000000));
	move_and_slide()
