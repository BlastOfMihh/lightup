extends State

var dash_vector=Vector2(200,0)
var friction=950
#copy
func _ready():
	conflicting_states=[]
	removing_states=["Stand", "Walk"]
	necessary_states=[]

func get_transition():
	if abs(pr.velos.length())<80:
		return "Stand"
	return null

# var once=false

func enter_state(old_states):
	# print("hi")
	pr.velos=dash_vector

func exit_state(new_states):
	pass

func _during_state(delta):
	# if once==false:
	# 	once=true
	# 	print("hi2")
	pr.velos=pr.velos.move_toward(Vector2.ZERO, friction*delta)
	pass
#
