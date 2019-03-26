extends Node

export(int) var multiple = 1
export(int) var dice_size
export(int) var adder = 0

# ex. 2D8 + 1

func init(multiple, dice_size, adder):
	self.multiple = multiple
	self.dice_size = dice_size
	self.adder = adder

func roll():
	var sum = 0
	for i in range(0, multiple):
		sum += roll_simple_dice(dice_size)
	sum += adder
	return sum
	
static func roll_simple_dice(dice_size):
	return randi() % dice_size + 1
	
func new_dice(adder):
	var dice = get_script().new()
	dice.init(multiple, dice_size, self.adder + adder)
	return dice