extends State #Setup

#copy
func _ready():
	conflicting_states=[]
	removing_states=["Idle"]
	necessary_states=[]

func get_transition():
	if pr.type is PackedScene:
		return "Idle"
	return null

func enter_state(old_states):

#	print("srtupu")
	pr.cspell=pr.type.instance()
	pr.cspell.sword_icon=pr.sword.texture
	Globals.actor.add_child(pr.cspell)
	pr.cspell.enter_setup()
	pass

func exit_state(new_states):
	pass

func _during_state(delta):
	pass
#
