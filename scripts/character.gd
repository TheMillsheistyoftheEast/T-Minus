extends CharacterBody2D


const SPEED = 200.0
@onready var animatedSprite2d: AnimatedSprite2D = $AnimatedSprite2D


func _physics_process(_delta: float) -> void:
	# Add the gravity.
	

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("walk left", "walk right")
	var directiony := Input.get_axis("walk up","walk down")
	
	# animation code
	if direction:
		if direction < 0:
			animatedSprite2d.play("walkLeft")
		else:
			animatedSprite2d.play("walkright")
	else:
		if directiony:
			if directiony < 0:
				animatedSprite2d.play("walkUp")
			else:
				animatedSprite2d.play("walkdown")
		else:
			animatedSprite2d.play("default")

	
	# movement code
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	if directiony:
		velocity.y = directiony * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	move_and_slide()
