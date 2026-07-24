extends Node2D


var correctPassword = "1427"
var attempt = ""

@onready var passwordField: Label = $"password field"
@onready var correctSound: AudioStreamPlayer2D = $"correct sound"
@onready var wrongSound: AudioStreamPlayer2D = $"wrong sound"
@onready var keyPressed: AudioStreamPlayer2D = $"key pressed"



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	attempt = ""
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	passwordField.text = attempt
	

#handle each button type
func _on_key_1_pressed() -> void:
	if attempt.length() < correctPassword.length():
		attempt += "1"
	keyPressed.play()





func _on_key_2_pressed() -> void:
	if attempt.length() < correctPassword.length():
		attempt += "2"
	keyPressed.play()


func _on_key_3_pressed() -> void:
	if attempt.length() < correctPassword.length():
		attempt += "3"
	keyPressed.play()


func _on_key_4_pressed() -> void:
	if attempt.length() < correctPassword.length():
		attempt += "4"
	keyPressed.play()


func _on_key_5_pressed() -> void:
	if attempt.length() < correctPassword.length():
		attempt += "5"
	keyPressed.play()


func _on_key_6_pressed() -> void:
	if attempt.length() < correctPassword.length():
		attempt += "6"
	keyPressed.play()


func _on_key_7_pressed() -> void:
	if attempt.length() < correctPassword.length():
		attempt += "7"
	keyPressed.play()


func _on_key_8_pressed() -> void:
	if attempt.length() < correctPassword.length():
		attempt += "8"
	keyPressed.play()


func _on_key_9_pressed() -> void:
	if attempt.length() < correctPassword.length():
		attempt += "9"
	keyPressed.play()


func _on_key_0_pressed() -> void:
	if attempt.length() < correctPassword.length():
		attempt += "0"
	keyPressed.play()


func _on_key_clear_pressed() -> void:
	attempt = ""
	keyPressed.play()

func _on_key_enter_pressed() -> void:
	if attempt == correctPassword:
		correctSound.play()
		get_tree().change_scene_to_file("res://scenes/cut_the_wires_game.tscn")
	else:
		attempt = ""
		wrongSound.play()
