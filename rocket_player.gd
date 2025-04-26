extends Node3D

var time = 0.0
var count: int = 0

func _ready() -> void:
	print("Player is ready!")

# 60 FPS, 1 / 60 ~ 16.7 ms
func _process(delta: float) -> void:
	
	if Input.is_action_just_pressed("ui_accept"):
		count += 1
		print('count:', count)
		
	if Input.is_action_pressed("ui_accept"):
		position.y += delta * 10
	if Input.is_action_pressed("ui_left"):
		rotate_z(delta)
	if Input.is_action_pressed("ui_right"):
		rotate_z(-delta)
