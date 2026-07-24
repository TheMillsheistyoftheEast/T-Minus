extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

#When the enter button is pressed go to first game
func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/find_bomb_game.tscn")
