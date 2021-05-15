extends State

onready var achs=[
	get_parent().get_node("NotCool"),
	get_parent().get_node("Slowness")
]

#
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
	for a in achs:
		if a.condition():
			sm.request_state(a.state_name)
	pass
#












