extends Node2D

signal pressedGoToBomb
#signal pressedControlDashboard

@onready var character: CharacterBody2D = $character
@onready var bomb: Sprite2D = $BombOverworld
@onready var controls: Sprite2D = $CockpitControls


#func _on_bomb_button_pressed() -> void:
	#pressedGoToBomb.emit()

func _process(_delta: float) -> void:
	if abs(character.position.x - bomb.position.x) <= 150:
		if character.position.y - bomb.position.y <= 150:
			if Input.is_action_just_pressed("interact"):
				pressedGoToBomb.emit()
	#if abs(character.position.x - controls.position.x) <= 120:
		#if character.position.y - controls.position.y <= 120:
			#if Input.is_action_just_pressed("interact"):
				#pressedControlDashboard.emit()
	

# 888 393
# 888 291
