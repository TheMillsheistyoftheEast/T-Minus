extends Sprite2D


var speed = 200.0
var start_position = Vector2(27, 579)
var target_position = Vector2(976, 174) # Define your destination
var direction 

func _process(delta: float) -> void:
	# Calculate direction to target
	direction = target_position - global_position
	
	# Normalize to get a unit vector, then multiply by speed
	if direction.length() > 0:
		global_position += direction.normalized() * speed * delta   


#27, 579 to 976, 174
