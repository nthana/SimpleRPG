extends "Action.gd"

func _init(world).(world):
	self.image = load("res://action/shield.png")
	
func action():
	world.get_current_character().adjust_ac(5)
