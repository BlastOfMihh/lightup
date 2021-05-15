extends State

onready var achs=[]

#
func _ready():
	for x in sm.get_children():
		if x is Buff and x.annouce==true:
			achs.push_back(x)
			
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
		if a.condition() and !sm.is_active(a.state_name):
			sm.request_state(a.state_name)
			print("ince")
	pass
#












