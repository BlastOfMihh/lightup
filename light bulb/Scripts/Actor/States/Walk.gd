extends State
#walk

func _ready():
	conflicting_states=[]
	removing_states=["Stand"]
	necessary_states=[]

func get_transition():
	if pr.velos==Vector2.ZERO:
		return "Stand"
	return null

func enter_state(old_states):
	pass

func exit_state(new_states):
	pass

func _during_state(delta):
	print("pr.update_velos(delta)")
	pr.update_velos(delta)
	pass
