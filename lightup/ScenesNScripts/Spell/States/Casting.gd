extends State #Casting


#copy
func _ready():
	conflicting_states=[]
	removing_states=["Idle", "Ready"]
	necessary_states=[]

func get_transition():
	return pr.cspell.get_transition_casting()

func enter_state(_old_states):
	pr.cspell.enter_casting()

func exit_state(new_states):
	pr.cspell.exit_casting()

func _during_state(delta):
	pr.cspell.during_casting()
