extends Control

const DefenseAction = preload("res://action/DefenseAction.gd")
const StrongAttackAction = preload("res://action/StrongAttackAction.gd")
const World = preload("res://World.gd")

func _enter_tree():
	self.modulate = Color(1,1,1,0)
	fade_in()

func _ready():
	randomize()

	var world = World.new($Model/PlayerCharacter, $Model/EnemyCharacter)	
	$Model/PlayerCharacter.init($Model/Weapons/Longsword)	
	$ActionBar/Defense.set_action(DefenseAction.new(world))
	$ActionBar/StrongAttack.set_action(StrongAttackAction.new(world))
	
func fade_in():	
	var tween = Tween.new()
	tween.interpolate_property(self, "modulate", \
			Color(1,1,1,0), Color(1,1,1,1), 5, \
			Tween.TRANS_QUAD, Tween.EASE_OUT)
	add_child(tween)
	tween.start()

