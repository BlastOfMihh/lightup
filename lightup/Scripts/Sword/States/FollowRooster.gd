extends State


func _ready():
	conflicting_states=[]
	removing_states=[]
	necessary_states=[]

func get_transition():
	# if Input.is_key_pressed(KEY_TAB):
	# 	return "exit"
	return null

func enter_state(old_states):
	pass

func exit_state(new_states):
	pass

func _during_state(delta):
	pr.chase_rooster(delta)