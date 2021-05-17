extends State
# Idle

func _ready():
	conflicting_states=[]
	removing_states=["Jump"]
	necessary_states=[]

func get_transition():
	if Input.is_action_pressed("ui_up"):
		return "Jump"
	return null

func enter_state(old_states):
	pass

func exit_state(new_states):
	pass

func _during_state(delta):
	if Input.is_action_pressed("ui_up"):
		print("hi")
		parent.velos.y-=500
		# parent.add_velocity(Vector2(-1000,0))
