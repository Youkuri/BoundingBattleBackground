extends Node2D

onready var camera : Camera2D = $CameraMan

func _ready() -> void:
	
	OS.window_fullscreen = true
	

func _input(event: InputEvent) -> void:
	
	if Input.is_action_just_pressed("ui_cancel"):
		call_deferred("quit")
	
	if Input.is_action_just_pressed("ui_up"):
		camera.global_position = $Yellow.global_position
	
	if Input.is_action_just_pressed("ui_down"):
		camera.global_position = $RedBack.global_position
	
	if Input.is_action_just_pressed("ui_left"):
		camera.global_position = $BlueBack.global_position
	
	if Input.is_action_just_pressed("ui_right"):
		camera.global_position = $BlackBack.global_position
	

func quit():
	get_tree().quit()
