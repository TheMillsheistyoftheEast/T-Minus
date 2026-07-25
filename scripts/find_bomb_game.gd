extends Node2D

signal pressedGoToBomb

@onready var character: CharacterBody2D = $character
@onready var bomb: Sprite2D = $BombOverworld


#func _on_bomb_button_pressed() -> void:
	#pressedGoToBomb.emit()

func _process(_delta: float) -> void:
	if character.position.x - bomb.position.x <= 150:
		if character.position.y - bomb.position.y <= 150:
			if Input.is_action_just_pressed("interact"):
				pressedGoToBomb.emit()
