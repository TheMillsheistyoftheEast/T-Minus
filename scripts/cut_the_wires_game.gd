extends Node2D

#create signal names
signal cut_wire_blue
signal cut_wire_red
signal cut_wire_yellow

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#If button is pressed change the animation to a cut wire and play a sound.
	#send signal saying wire is cut
	#check to see if it was correct wire. 
	#If wire is correct then do a thing
	#If wire is incorrect then do a thing
	pass
	
#what to do when button is pressed
func _on_blue_texture_button_pressed() -> void:
	cut_wire_blue.emit()
	
func _on_red_texture_button_pressed() -> void:
	cut_wire_red.emit()

func _on_yellow_texture_button_pressed() -> void:
	cut_wire_yellow.emit()

#what happens when signal is recieved
func _on_cut_wire_red() -> void:
	print("red wire is cut")
	#shut off bomb
	
func _on_cut_wire_blue() -> void:
	print("blue wire is cut")
	#make timer go down faster
	
func _on_cut_wire_yellow() -> void:
	print("yellow wire is cut")
	get_tree().quit()
