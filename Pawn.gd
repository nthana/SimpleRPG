extends Sprite

export(NodePath) var model_node
var model = null setget set_model

func set_model(value):
	model = value
	if model == null:
		return
	model.connect("data_changed", self, "update_hp")
	update_hp()
	
func update_hp():
	if model == null:
		return
	if $ProgressBar == null:
		return
	$ProgressBar.max_value = model.max_hp
	$ProgressBar.value = model.hp

func _ready():
	if model_node != null:
		set_model(get_node(model_node))

