extends State

func _ready():
	conflicting_states=[]
	removing_states=["Idle", "Ready", "Casting"]
	necessary_states=[]

func get_transition():
	return null

func enter_state(old_states):
	pass

func exit_state(new_states):
	pass

func _during_state(delta):
	pass
