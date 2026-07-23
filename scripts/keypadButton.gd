extends StaticBody2D

var number = "0"
@onready var passwordLabel: Label = $"../../SubViewport/Label"

func setNumber(value):
	number = value
	if value:
		passwordLabel.text += str(value)
