extends Area2D

@onready var gg =  $".."

@export var death = 0;
var time_death;

func _on_body_entered(body):
	if ((body is Enemy_Cub) or (body is Wall)) and (death == 0):
		death = 1;
	if death == 1:
		$"../../Дед".visible = true;
		await get_tree().create_timer(5).timeout;
		get_tree().quit();
		
