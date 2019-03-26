# class Weapon
extends Node

const Attack = preload("res://Attack.gd")

var damage

func _ready():
	damage = $Damage
	
func get_attack(to_hit, damage_mod):
	return Attack.new(self.name, to_hit, damage.new_dice(damage_mod))