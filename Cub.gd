extends CharacterBody2D
class_name Enemy_Cub

@export var cub_speed = 4;

@export var cub_boost = 0.005;	

var start = 0;
var teorver;

func _process(delta):
	if start == 0:
		teorver = 2;
		start = 1;
	cub_speed += cub_boost;
	if teorver % 2 == 0:
		if position.x <= 1200:
			position.x += cub_speed;
		else:
			teorver = randi() % 12;
			if teorver % 2 == 0:
				position.x = -50;
				position.y = 100*teorver/2+50;
			else:
				position.x = 1200;
				position.y = 100*(teorver-1)/2+50;
	else:
		if position.x >= -50:
			position.x -= cub_speed;
		else:
			teorver = randi() % 12;
			if teorver % 2 == 0:
				position.x = -50;
				position.y = 100*teorver/2+50;
			else:
				position.x = 1200;
				position.y = 100*(teorver-1)/2+50;
