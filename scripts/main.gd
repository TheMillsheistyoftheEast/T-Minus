extends Node


@onready var timer: Timer = $Timer
@onready var bomb_scene_btn: Button = $"Control/bomb scene"
@onready var timeLabel: Label = $"time label"




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer.start()

func _format_seconds(time : float) -> String:
	var minutes := time / 60
	var seconds := fmod(time, 60)

	return "%02d:%02d" % [minutes, seconds]

func startBomb() -> void:
	timer.timeout.connect(gameOver)
	
func gameOver() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	timeLabel.text = str(_format_seconds(timer.time_left))



func _on_bomb_scene_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/bomb_game.tscn")
