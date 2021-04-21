extends State #ready

func _ready():
	conflicting_states=[]
	removing_states=["Idle", "Casting"]
	necessary_states=[]

func get_transition():
	if pr.cspell.is_released():
		return "Idle"
	return null

func enter_state(old_states):
	pr.cspell.release()
	pass

func exit_state(new_states):
	pass

func _during_state(delta):
	pr.cspell.release()
	pass
#
