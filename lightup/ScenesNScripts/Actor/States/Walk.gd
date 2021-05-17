extends State
#walk

func _ready():
	conflicting_states=[]
	removing_states=["Stand"]
	necessary_states=[]

func get_transition():
	if pr.velos==Vector2.ZERO:
		return "Stand"
	return null

func enter_state(old_states):
	if pr.dir.y<0:
		pr.sp.play("walk_down")
	else :
		pr.sp.play("walk")
	pass

func exit_state(new_states):
	pass

func _during_state(delta):
	if pr.dir.x:
		pr.sp.get_parent().scale.x=-pr.dir.x
	pr.update_velos(delta)











