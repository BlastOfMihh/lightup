extends State #ready

func _ready():
	conflicting_states=[]
	removing_states=["Idle", "Casting"]
	necessary_states=[]

func get_transition():
	return pr.cspell.get_transition_ready()

func enter_state(_old_states):
	pr.cspell.enter_ready()

func exit_state(new_states):
	pr.cspell.exit_ready()

func _during_state(delta):
	pr.cspell.during_ready()
