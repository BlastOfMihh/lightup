extends State

func _ready():
	conflicting_states=[]
	removing_states=["Walk","Stagger","Dash"]
	necessary_states=[]

export var dash_init_speed=300
export var dash_friction=950

func get_transition():
	if Input.is_key_pressed(SPKEY):
		var dash=sm.request_state("Dash")
		print("hi dash")
		if dash:
			var v=(pr.global_position-pr.get_global_mouse_position()).normalized()
			dash.dash_vector=v
#			dash.dash_vector=Vector2(cos(global_rotation), sin(global_rotation))*dash_init_speed
			dash.friction=dash_friction
			dash.enter_state([])

		
	if pr.velos!=Vector2.ZERO:
		return "Walk"
	return null


func enter_state(old_states):
	if pr.sp!=null:
		pr.sp.play("stand")
	# yield(get_tree().root, "ready")
	pass

func exit_state(new_states):
	pass

func _during_state(delta):
	pr.update_velos(delta)
	pass
