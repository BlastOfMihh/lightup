extends State



func condition()->bool:
	return Globals.npc_hits>=3


func _ready():
	conflicting_states=[]
	removing_states=[]
	necessary_states=[]

func get_transition():
	return null

func enter_state(old_states):
	pass

func exit_state(new_states):
	pass

func _during_state(delta):
	pass
#
