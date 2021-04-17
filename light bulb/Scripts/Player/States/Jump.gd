extends State
#Jump

func _ready():
	conflicting_states=[]
	removing_states=["Idle"]
	necessary_states=[]

func get_transition():
	if parent.is_on_floor():
		return "Idle"
	return null

func enter_state(old_states):
	pass

func exit_state(new_states):
	pass

func _during_state(delta):
	pass
