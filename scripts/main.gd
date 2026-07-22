extends Node
@onready var timer: Timer = $Timer
@onready var timeLabel: Label = $Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
 
func startBomb() -> void:
	timer.timeout.connect(gameOver)
	
func gameOver() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	timeLabel.text = str(int(timer.time_left))
