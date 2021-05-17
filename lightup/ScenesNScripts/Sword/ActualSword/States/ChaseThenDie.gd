extends State
#ChaseThenDie

func _ready():
	conflicting_states=[]
	removing_states=["InRooster"]
	necessary_states=[]

func get_transition():
	if pr.position.distance_to(pr.p2death)<2:
		return "exit"
	return null

func enter_state(old_states):
	if pr.sp:
		pr.sp.play("default")
	if pr.cs_floater:
		pr.cs_shield.disabled=true
		pr.cs_floater.disabled=false


func exit_state(new_states):
	pr.queue_free()
	pr.point2rooster.get_parent().queue_free()

func _during_state(delta):
	print(pr.position.distance_to(pr.p2death))
	pr.chase_death(delta)
