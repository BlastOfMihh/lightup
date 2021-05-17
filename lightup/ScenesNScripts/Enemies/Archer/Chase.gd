extends State

var dist2actor=INF

func _ready():
	conflicting_states=[]
	removing_states=[]
	necessary_states=[]

func get_transition():
	if dist2actor<=pr.attack_range:
		return ["Aim"]
	return null
	
func _during_state(delta):
	dist2actor=pr.global_position.distance_to(Globals.actor.global_position)
	if dist2actor>pr.attack_range:
		pr.velos=-(pr.global_position-Globals.actor.global_position).normalized()*pr.speed
	else: 
		pr.velos=Vector2.ZERO
	pr.apply_velos(delta)

func enter_state(old_states):
	dist2actor=INF
	pass

func exit_state(new_states):
	pass


