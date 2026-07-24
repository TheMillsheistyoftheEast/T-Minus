extends Node2D


@onready var redWire: Button = $"red wire"
@onready var yellowWire: Button = $"yellow wire"
@onready var blueWire: Button = $"blue wire"
@onready var greenWire: Button = $"green wire"
@onready var red_pre_cut: Sprite2D = $"red wire/pre cut"
@onready var red_post_cut: Sprite2D = $"red wire/post cut"
@onready var yellow_pre_cut: Sprite2D = $"yellow wire/pre cut"
@onready var yellow_post_cut: Sprite2D = $"yellow wire/post cut"
@onready var blue_pre_cut: Sprite2D = $"blue wire/pre cut"
@onready var blue_post_cut: Sprite2D = $"blue wire/post cut"
@onready var green_pre_cut: Sprite2D = $"green wire/pre cut"
@onready var green_post_cut: Sprite2D = $"green wire/post cut"

signal blueWireCut
signal redWireCut
signal yellowWireCut

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


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
	print('nice choice')
	red_pre_cut.hide()
	red_post_cut.show()
	redWireCut.emit()
	get_tree().change_scene_to_file("res://scenes/end_scene.tscn")


func _on_yellow_wire_pressed() -> void:
	print('crashout')
	yellow_pre_cut.hide()
	yellow_post_cut.show()
	yellowWireCut.emit()
	get_tree().change_scene_to_file("res://scenes/game_over.tscn")
	
func _on_blue_wire_pressed() -> void:
	print('less time.. gulp!')
	blue_pre_cut.hide()
	blue_post_cut.show()
	blueWireCut.emit()
	
func _on_green_wire_pressed() -> void:
	green_pre_cut.hide()
	green_post_cut.show()

func recieve(blueWireCut):
	print("done")
