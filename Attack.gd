# class Attack
extends Object

const Dice = preload("res://Dice.gd")

var name
var to_hit
var damage

func _init(name, to_hit, damage):
	self.name = name
	self.to_hit = to_hit
	self.damage = damage

func attack(target):
	var roll = Dice.roll_simple_dice(20)
	print(name, " Attack: roll ", roll, " + ", to_hit, " against AC ", target.ac)
	
	if roll + to_hit >= target.ac:
		var dmg = damage.roll()
		target.adjust_hp(-dmg)
		print("Hit! ", dmg, " damage(s)")
	else:
		print("Miss")