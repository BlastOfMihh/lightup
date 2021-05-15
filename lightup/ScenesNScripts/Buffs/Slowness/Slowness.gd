extends Buff 

export var slow=-30

func _ready():
	conflicting_states=[]
	removing_states=[]
	necessary_states=[]


func get_transition():
	return null

func enter_state2(old_states):
	pr.velos_multiplier+=slow
	
	pass

func exit_state2(new_states):
	pass

func _during_state(delta):
	pass
#



