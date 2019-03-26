extends "Action.gd"

func _init(world).(world):
	self.image = preload("res://action/axe.png")
	
func action():
	world.get_current_character().attack( \
		world.get_current_enemy(), 0, +3)
