extends Sprite2D


var speed = 300.0
var start_position = Vector2(27, 579)
var target_position = Vector2(976, 174) # Define your destination
var direction 
var didTheAnimation = false


@onready var explode: AnimatedSprite2D = $"../explode"

func _process(delta: float) -> void:
	# Calculate direction to target
	direction = target_position - global_position
	
	# Normalize to get a unit vector, then multiply by speed
	if direction.length() > 0:
		global_position += direction.normalized() * speed * delta
	if abs(global_position.x - target_position[0]) <= 10 and abs(global_position.y - target_position[1]) <= 10:
		self.hide()
		explode.show()
		if not didTheAnimation:
			explode.play("default")
			didTheAnimation = true	
#when ship touches target_position
#then hide()   


#27, 579 to 976, 174
