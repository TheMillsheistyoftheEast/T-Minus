extends Node2D


@onready var redWire: Button = $"red wire"
@onready var yellowWire: Button = $"yellow wire"
@onready var blueWire: Button = $"blue wire"
@onready var greenWire: Button = $"green wire"
@onready var pre_cut_red: Sprite2D = $"pre cut red"
@onready var post_cut_red: Sprite2D = $"post cut red"
@onready var pre_cut_yellow: Sprite2D = $"pre cut yellow"
@onready var post_cut_yellow: Sprite2D = $"post cut yellow"
@onready var pre_cut_blue: Sprite2D = $"pre cut blue"
@onready var post_cut_blue: Sprite2D = $"post cut blue"
@onready var pre_cut: Sprite2D = $"pre cut"
@onready var post_cut: Sprite2D = $"post cut"


#@onready var timer: Timer = $"Timer"
@onready var timeLabel: Label = $"time label"
@onready var messages: Label = $messages
@onready var correctSound: AudioStreamPlayer2D = $"correct sound"
@onready var wrongSound: AudioStreamPlayer2D = $"wrong sound"
@onready var keyPressed: AudioStreamPlayer2D = $"key pressed"

signal blueWireCut
signal redWireCut
signal yellowWireCut

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	 # Replace with function body.
	#print(timer)
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	#If button is pressed change the animation to a cut wire and play a sound.
	#send signal saying wire is cut
	#check to see if it was correct wire. 
	#If wire is correct then do a thing
	#If wire is incorrect then do a thing
	pass
	
#what to do when button is pressed


func _on_red_wire_pressed() -> void:
	pre_cut_red.hide()
	post_cut_red.show()
	correctSound.play()
	redWireCut.emit()
	get_tree().change_scene_to_file("res://scenes/end_scene.tscn")


func _on_yellow_wire_pressed() -> void:
	print('crashout')
	pre_cut_yellow.hide()
	post_cut_yellow.show()
	wrongSound.play()
	yellowWireCut.emit()
	get_tree().change_scene_to_file("res://scenes/game_over.tscn")
	
func _on_blue_wire_pressed() -> void:
	print('less time.. gulp!')
	pre_cut_blue.hide()
	post_cut_blue.show()
	wrongSound.play()
	blueWireCut.emit()
	messages.text = "Uh oh, wrong wire! There's less time left now! I better hurry."
	
func _on_green_wire_pressed() -> void:
	pre_cut.hide()
	post_cut.show()
	wrongSound.play()
	messages.text = "Welp, that wasn't it! I still got time."
