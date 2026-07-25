extends Node2D

signal pressedGoToBomb



func _on_bomb_button_pressed() -> void:
	pressedGoToBomb.emit()
