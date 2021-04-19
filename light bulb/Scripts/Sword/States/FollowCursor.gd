extends State


func _ready():
	conflicting_states=[]
	removing_states=[]
	necessary_states=[]

func get_transition():
	return null


var add_v=Vector2.ZERO

func enter_state(old_states):
	add_v = pr.get_local_mouse_position().normalized()*100
	pass
func exit_state(new_states):
	pass

func _during_state(delta):
	# pr.rotation=PI/2+(pr.global_position-pr.get_global_mouse_position()).angle()
	pr.velos=add_v
