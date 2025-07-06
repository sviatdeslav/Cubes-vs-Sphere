extends StaticBody2D
class_name Wall

@export var wall_speed = 3;
var side = 0;

func _process(delta):
	if side == 0:
		if position.x <= 1036.8:
			position.x += wall_speed;
		else:
			side = 1;
	else:
		if position.x >= 115.2:
			position.x -= wall_speed;
		else:
			side = 0;
