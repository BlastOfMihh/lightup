extends State #Casting


#copy
func _ready():
	conflicting_states=[]
	removing_states=["Idle", "Ready"]
	necessary_states=[]

func get_transition():
	if pr.cspell.is_ready():
		return "Ready"
	if !pr.cspell.is_casting():
		return "Idle"
	return null

func enter_state(old_states):
	pr.cspell.start_casting()
	pr.cspell.sp.play("cast")

func exit_state(new_states):
	pr.cspell.stop_casting()

func _during_state(delta):
	pr.cspell.cast()
	pass
#
