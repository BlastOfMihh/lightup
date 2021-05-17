extends State #Idle

#copy
func _ready():
	conflicting_states=[]
	removing_states=["Casting", "Ready", "Setup"]
	necessary_states=[]

func get_transition():
	return pr.cspell.get_transition_idle()

func enter_state(_old_states):
	pr.cspell.enter_idle()

func exit_state(new_states):
	pr.cspell.exit_idle()

func _during_state(delta):
	pr.cspell.during_idle()
#
