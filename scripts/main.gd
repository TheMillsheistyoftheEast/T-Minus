extends Node


@onready var timer: Timer = $Timer
@onready var timeLabel: Label = $"time label"
#@onready var timeLabel_2: Label = $"time label2"
@onready var timeLabel_3: Label = $"time label3"

#@onready var cut_the_wires_game: Node2D = $CutTheWiresGame
@onready var camera2d: Camera2D = $Camera2D

#cut wire game vars
@onready var redWire: Button = $"CutTheWiresGame/red wire"
@onready var yellowWire: Button = $"CutTheWiresGame/yellow wire"
@onready var blueWire: Button = $"CutTheWiresGame/blue wire"
#@onready var greenWire: Button = $"CutTheWiresGame/green wire"
#@onready var red_pre_cut: Sprite2D = $"CutTheWiresGame/red wire/pre cut"
#@onready var red_post_cut: Sprite2D = $"CutTheWiresGame/red wire/post cut"
#@onready var yellow_pre_cut: Sprite2D = $"CutTheWiresGame/yellow wire/pre cut"
#@onready var yellow_post_cut: Sprite2D = $"CutTheWiresGame/yellow wire/post cut"
#@onready var blue_pre_cut: Sprite2D = $"CutTheWiresGame/blue wire/pre cut"
#@onready var blue_post_cut: Sprite2D = $"CutTheWiresGame/blue wire/post cut"
#@onready var green_pre_cut: Sprite2D = $"CutTheWiresGame/green wire/pre cut"
#@onready var green_post_cut: Sprite2D = $"CutTheWiresGame/green wire/pre cut"
#@onready var timer: Timer = $"Timer"
#@onready var timeLabel: Label = $"time label"

#number game vars
var correctPassword = "1427"
var attempt = ""
#
@onready var passwordField: Label = $"BombGame/keypad/password field"
@onready var correctSound: AudioStreamPlayer2D = $"BombGame/keypad/correct sound"
@onready var wrongSound: AudioStreamPlayer2D = $"BombGame/keypad/wrong sound"
@onready var keyPressed: AudioStreamPlayer2D = $"BombGame/keypad/key pressed"

#find bomb game vars
var direction := Input.get_axis("ui_left", "ui_right")
var directiony := Input.get_axis("ui_up","ui_down")
#if direction:
	#velocity.x = direction * SPEED
#else:
	#velocity.x = move_toward(velocity.x, 0, SPEED)
#if directiony:
	#velocity.y = directiony * SPEED
#else:
	#velocity.y = move_toward(velocity.y, 0, SPEED)
#move_and_slide()

var inBombGame = false
var inBombFind = false
var inWireGame = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#timer.start()
	camera2d.position.x = 448.0
	camera2d.position.y = 248.0

func _format_seconds(time : float) -> String:
	var minutes := time / 60
	var seconds := fmod(time, 60)

	return "%02d:%02d" % [minutes, seconds]

func startBomb() -> void:
	timer.timeout.connect(gameOver)
	timer.start()
	
func gameOver() -> void:
	get_tree().change_scene_to_file("res://scenes/game_over.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	timeLabel.text = str(_format_seconds(timer.time_left))
	#timeLabel_2.text = str(_format_seconds(timer.time_left))
	timeLabel_3.text = str(_format_seconds(timer.time_left))



#func _on_bomb_scene_pressed() -> void:
	#get_tree().change_scene_to_file("res://scenes/bomb_game.tscn")


func _on_go_bomb_pressed() -> void:
	camera2d.position.x = 2744.0
	camera2d.position.y = 1136.0
	inBombGame = true
	inBombFind = false
	inWireGame = false
	startBomb()


func _on_go_find_pressed() -> void:
	camera2d.position.x = 472.0
	camera2d.position.y = 1412.0
	inBombFind = true
	inBombGame = false
	inWireGame = false



func _on_go_wire_pressed() -> void:
	camera2d.position.x = 2704.0
	camera2d.position.y = 256.0
	inWireGame = true
	inBombFind = false
	inBombGame = false


func _on_find_bomb_game_pressed_go_to_bomb() -> void:
	camera2d.position.x = 2744.0
	camera2d.position.y = 1136.0
	inBombGame = true
	inBombFind = false
	inWireGame = false
	startBomb()


func _on_bomb_game_got_right_password_bomb_game() -> void:
	camera2d.position.x = 2704.0
	camera2d.position.y = 256.0
	inWireGame = true
	inBombFind = false
	inBombGame = false


func _on_cut_the_wires_game_blue_wire_cut() -> void:
	timer.start(timer.time_left - 120.0)
