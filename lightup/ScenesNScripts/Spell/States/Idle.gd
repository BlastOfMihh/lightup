extends State #Idle

#copy
func _ready():
	conflicting_states=[]
	removing_states=["Casting", "Ready"]
	necessary_states=[]

func get_transition():
	if pr.cspell.enter_casting():
		return "Casting"
	return null

func enter_state(old_states):
	pass

func exit_state(new_states):
	pass

func _during_state(delta):
	pass
#
