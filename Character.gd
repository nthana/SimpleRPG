# class Character
extends Node

export(int) var hp
export(int) var max_hp
export(int) var ac = 10
export(int) var str_mod = 0
var weapon = null

signal data_changed()

func init(weapon):
	self.weapon = weapon

func adjust_ac(dif):
	ac += dif
	emit_signal("data_changed")
	
func adjust_hp(dif):
	hp += dif
	if hp < 0:
		hp = 0
	if hp > max_hp:
		hp = max_hp
	emit_signal("data_changed")

func attack(target, to_hit_mod, damage_mod):
	var attack = weapon.get_attack(str_mod + to_hit_mod, str_mod + damage_mod)
	attack.attack(target)
