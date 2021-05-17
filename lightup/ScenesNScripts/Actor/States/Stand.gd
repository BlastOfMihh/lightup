extends State

func _ready():
	conflicting_states=[]
	removing_states=["Walk","Stagger","Dash"]
	necessary_states=[]

func get_transition():
	if pr.velos!=Vector2.ZERO:
		return "Walk"
	return null


func enter_state(old_states):
	if pr.sp!=null:
		pr.sp.play("stand")
	# yield(get_tree().root, "ready")
	pass

func exit_state(new_states):
	pass

func _during_state(delta):
	pr.update_velos(delta)
	pass
