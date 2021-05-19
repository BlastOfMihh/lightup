extends State #Static shield

#copy
func _ready():
	conflicting_states=[]
	removing_states=["InRooster", "FollowCursor", "RotateAfterCursor"]
	necessary_states=[]

func get_transition():
	return null

func enter_state(old_states):

	pr.sp.play("static_shield")
	pr.velos=Vector2.ZERO
	pr.cs_shield.disabled=false
	pr.cs_floater.disabled=true



func exit_state(new_states):
	pass

func _during_state(delta):
	pass
#
