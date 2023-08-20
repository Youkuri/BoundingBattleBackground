extends Node2D

@onready var camera : Camera2D = $CameraMan

func _ready() -> void:
	
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	

func _input(event: InputEvent) -> void:
	
	if Input.is_action_just_pressed("ui_cancel"):
		call_deferred("quit")
	
	if Input.is_action_just_pressed("ui_up"):
		camera.position = $Yellow.position
	
	if Input.is_action_just_pressed("ui_down"):
		camera.position = $RedBack.position
	
	if Input.is_action_just_pressed("ui_left"):
		camera.position = $BlueBack.position
	
	if Input.is_action_just_pressed("ui_right"):
		camera.position = $BlackBack.position
	

func quit():
	get_tree().quit()
