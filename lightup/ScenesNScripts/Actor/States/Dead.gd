extends State

func _ready():
	conflicting_states=[]
	removing_states=[]
	yield(get_parent(), "ready")
	for s in sm.get_children():
		removing_states.push_back(s.state_name)
	removing_states.erase("Dead")
	for s in removing_states:
		print(s)
	necessary_states=[]

func get_transition():
	return null

func enter_state(old_states):
	pr.velos=Vector2.ZERO
	pr.sp.play("Dead")
	pass

func exit_state(new_states):
	pass

func _during_state(delta):
	pass

