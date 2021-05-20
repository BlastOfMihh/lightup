extends State

onready var ap=$StagerAP

export var stagger_time:=0.3

var timer:Timer= Timer.new()

func _ready():
	conflicting_states=["Dead"]
	removing_states=["Walk", "Stand", "CastSpell","Dash","Idle"]
	necessary_states=[]
	
	
	timer.wait_time=stagger_time
	timer.one_shot=true
	add_child(timer)

func get_transition():
	if timer.time_left==0:
		return ["exit","Stand", "Idle"]
	return null


func enter_state(old_states):
	pr.velos=Vector2.ZERO
	ap.play("stagger")
	pr.sp.play("idle")
	timer.start()

func exit_state(new_states):
	ap.play_backwards("stagger")

func _during_state(delta):
#	print(timer.time_left)
	pass
