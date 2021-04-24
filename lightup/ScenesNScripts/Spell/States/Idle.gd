extends State #Idle

#copy
func _ready():
	conflicting_states=[]
	removing_states=["Casting", "Ready", "Setup"]
	necessary_states=[]

func get_transition():
	if pr.cspell.enter_casting():
		return "Casting"
	return null

func enter_state(old_states):
	if pr.cspell==null:
		pr.cspell=pr.type.instance()
		pr.add_child(pr.cspell)
		pr.cspell.position.x=pr.spell_range
	#animations
	pr.cspell.sp.stop()
	pr.cspell.sp.frame=0

func exit_state(new_states):
	pass

func _during_state(delta):
	pass
#
