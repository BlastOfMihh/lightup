extends State


var timer:Timer= Timer.new()


func _ready():
	conflicting_states=[]
	removing_states=["Walk", "Stand", "CastSpell","Dash","Idle"]
	necessary_states=[]
	timer.wait_time=2.0
	timer.one_shot=true
	add_child(timer)

func get_transition():
	if timer.time_left==0:
		return ["Stand", "Idle"]
	return null


func enter_state(old_states):
	pr.velos=Vector2.ZERO
	pr.ap.play("turn_red")
	timer.start()

func exit_state(new_states):
	pr.ap.play_backwards("turn_red")

func _during_state(delta):
	print(timer.time_left)
