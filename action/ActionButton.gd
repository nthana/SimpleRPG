extends Button

var _action = null setget set_action
	
func set_action(action):
	_action = action
	$CenterContainer/TextureRect.texture = _action.image

func _on_ActionButton_pressed():
	if _action == null:
		return
	_action.action()
