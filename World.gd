# class World
extends Node

var player
var enemy
var player_turn = true

func _init(player, enemy):
	self.player = player
	self.enemy = enemy
	
func get_current_character():
	if player_turn:
		return player
	else:
		return enemy
	
func get_current_enemy():
	if player_turn:
		return enemy
	else:
		return player

func end_turn():
	player_turn = !player_turn