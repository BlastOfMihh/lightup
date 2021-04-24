extends State
#idle

func _ready():
	conflicting_states=[]
	removing_states=["RotatingAttack", "CastSpell"]
	necessary_states=[]

func get_transition():
	if Input.is_action_just_pressed("change_mode"):
		return "CastSpell"
	return null

func enter_state(old_states):
	pass

func exit_state(new_states):
	pass

func _during_state(delta):
	if Input.is_action_just_pressed("retreive"):
		pr.sh.retreive()
	pass
