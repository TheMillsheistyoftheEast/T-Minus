extends Node2D

var correctPassword = "1427"
var attempt = ""

signal onCorrectPassword
signal onWrongPassword
signal onClearPassword
signal onKeypadPress

@onready var correct_sound: AudioStreamPlayer2D = $"correct sound"
@onready var wrong_sound: AudioStreamPlayer2D = $"wrong sound"
@onready var pressed_button_sound: AudioStreamPlayer2D = $"pressed button sound"

var is_audio_playing = false

@onready var keys: Node2D = $keys

@onready var password_label: Label = $"SubViewport/password label"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for child in keys.get_children():
		if child is StaticBody2D:
			child.connect("onInteract", onButtonInteract)
	password_label.text = ""
	
func onButtonInteract(value) -> void:
	if is_audio_playing:
		return
	is_audio_playing = true
	pressed_button_sound.playing = true
	
#	hit the enter button
	if value == "enter key":
		if attempt == correctPassword:
			correct_sound.play()
			emit_signal("onCorrectPassword", attempt)
		else:
			wrong_sound.play()
			emit_signal("onWrongPassword", attempt)
		attempt = ""
		
#	hit the clear button
	elif value == "clear":
		emit_signal("onClearPassword", attempt)
		attempt = ""
	
#	pressed a number
	else:
		if attempt.length() > correctPassword.length():
			return
		attempt += value
		emit_signal("onKeypadPress", attempt)
	
	password_label.text = attempt

	
	
func onInteract():
	pass
func _process(delta: float) -> void:
	pass
