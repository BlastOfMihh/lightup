extends State

func _ready():
	# conflicting_states=["Idle"]
	pass

func _during_state(delta):
	parent.dir.x= int(Input.is_action_pressed("ui_right"))-int(Input.is_action_pressed("ui_left"))
